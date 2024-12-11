package com.thomas.controller;

import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "productAdminController", value = "/admin/table/products")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50
)
public class productAdminController extends HttpServlet {
    private static final String ULOAD_DIR = "uploads";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        request.getRequestDispatcher("/frontend/AdminPage/allProduct/allProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DateTimeFormatter formatter = DateTimeFormatter.ISO_LOCAL_DATE;
        int productId = 0;
        String message = request.getParameter("message");
        String productName = request.getParameter("productName");
        String tags = request.getParameter("categories");
        String description = request.getParameter("Desc");
        String releaseDateString = request.getParameter("releaseDate");
        LocalDate releaseDate = LocalDate.parse(releaseDateString, formatter);
        String gender = request.getParameter("gender");
        double price = Double.parseDouble(request.getParameter("price"));
        int stockQuantity = Integer.parseInt(request.getParameter("stockQuantity"));
        String material = request.getParameter("material");
        UploadProductService uploadProductService = new UploadProductService();
        System.out.println(message
                + productName
                + tags
                + description
                + releaseDateString
                + gender
                + price
                + stockQuantity
                + material
        );
        if (message.equals("create")) {
            uploadProductService.saveProduct(productName, tags, description, releaseDate, gender, price, stockQuantity, material);
        } else if(message.equals("update")) {
            productId = Integer.parseInt(request.getParameter("productId"));
            uploadProductService.updateProduct(productId, productName, tags, description, releaseDate, gender, price, stockQuantity, material);
        }
        String uploadPath = request.getServletContext().getRealPath("") + File.separator + ULOAD_DIR;
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }
        handleFileUpload(request, productName, uploadPath, message, uploadProductService, productId);
        response.sendRedirect(request.getContextPath() + "/admin/table/products");
    }

    private void handleFileUpload(HttpServletRequest request, String productName, String uploadPath, String message, UploadProductService uploadProductService, int productId) throws ServletException, IOException {
        try {
            int count = 0;
            List<String> extraImages = new ArrayList<>();
            String mainImage = null;
            File productDirectory = new File(uploadPath + File.separator + productName);
            if (!productDirectory.exists()) {
                productDirectory.mkdirs();
            }
            for (Part part : request.getParts()) {
                String fileName = extractedFile(part);
                if (fileName != null && !fileName.isEmpty()) {
                    String uniqueFileName = productName + "_" + count + "_" + System.currentTimeMillis();
                    String filePath = productDirectory.getAbsolutePath() + File.separator + uniqueFileName;
                    count++;
                    part.write(filePath);
                    if (count == 1) {
                        mainImage = filePath;
                    } else {
                        extraImages.add(filePath);
                    }
                }
            }
            if (mainImage != null) {
                if (message.equals("create")) {
                    int beltId = uploadProductService.getLatestProductId();
                    uploadProductService.saveImagePath(beltId, mainImage, extraImages);
                } else if(message.equals("update")) {
                    uploadProductService.updateImagePath(productId, mainImage, extraImages);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private String extractedFile(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        for (String content : contentDisp.split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
            }
        }
        return null;
    }
}

