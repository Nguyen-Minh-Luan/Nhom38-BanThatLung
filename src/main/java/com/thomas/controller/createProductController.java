package com.thomas.controller;

import com.thomas.dao.model.Product;
import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "createProductController", value = "/admin/table/products/createProduct")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50
)
public class createProductController extends HttpServlet {
    private static final String ULOAD_DIR = "uploads";
    private static final UploadProductService uploadProductService = new UploadProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String beltIdParam = request.getParameter("id");
        if (beltIdParam != null) {
            int beltId = Integer.parseInt(beltIdParam);
            Product product = uploadProductService.getProductById(beltId);
            String[] image = uploadProductService.getProductImages(beltId);
            String[] tagsArray = uploadProductService.getTags(beltId);
            if (product != null) {
                request.setAttribute("product", product);
                int count = 0;
                for (String s : image) {
                    request.setAttribute("image" + count, s);
                    count++;
                }
                String tags = String.join(" ", tagsArray);
                request.setAttribute("tags", tags);
            } else {
                response.sendRedirect(request.getContextPath() + "/admin/table/products");
                return;
            }
        }
        request.getRequestDispatcher("/frontend/AdminPage/createProductPage/createProductPage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DateTimeFormatter formatter = DateTimeFormatter.ISO_LOCAL_DATE;
        int productId = 0;
        if (request.getParameter("beltId") != null) {
            productId = Integer.parseInt(request.getParameter("beltId"));
        }
        String message = request.getParameter("message");
        String productName = request.getParameter("beltName");
        String[] tags = request.getParameter("tags").split(" ");
        String releaseDateString = request.getParameter("releaseDate");
        LocalDate releaseDate = LocalDate.parse(releaseDateString, formatter);
        String gender = request.getParameter("gender");
        double price = Double.parseDouble(request.getParameter("price"));
        double discountPercent = Double.parseDouble(request.getParameter("discountPercent"));
        int stockQuantity = Integer.parseInt(request.getParameter("quantity"));
        int isDeleted = Integer.parseInt(request.getParameter("isDeleted"));
        String material = request.getParameter("material");

        if (message.equals("create")) {
            uploadProductService.saveProduct(productName, tags, discountPercent, releaseDate, gender, price, stockQuantity, material, isDeleted);
        } else if (message.equals("update")) {
            productId = Integer.parseInt(request.getParameter("beltId"));
            uploadProductService.updateProduct(productId, productName, tags, discountPercent, releaseDate, gender, price, stockQuantity, material, isDeleted);
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
            List<String> descImages = new ArrayList<>();
            String mainImage = null;

            // Create product directory if it doesn't exist
            File productDirectory = new File(uploadPath + File.separator + productName);
            if (!productDirectory.exists()) {
                productDirectory.mkdirs();
            }

            // Iterate through all parts in the request
            for (Part part : request.getParts()) {
                String fieldName = part.getName();
                String fileName = extractedFile(part);

                if (fileName != null && !fileName.isEmpty()) {
                    // Generate a unique file name for saving
                    String uniqueFileName = productName + "_" + count + "_" + System.currentTimeMillis();
                    String filePath = productDirectory.getAbsolutePath() + File.separator + uniqueFileName;
                    count++;

                    // Save the file
                    part.write(filePath);

                    // Assign to mainImage or add to extraImages
                    if (count == 1) {
                        mainImage = filePath;
                    } else {
                        extraImages.add(filePath);
                    }
                }
            }

            // Save image paths using the service
            if (mainImage != null) {
                if ("create".equals(message)) {
                    int beltId = uploadProductService.getLatestProductId();
                    uploadProductService.saveImagePath(beltId, mainImage, extraImages);
                } else if ("update".equals(message)) {
                    uploadProductService.updateImagePath(productId, mainImage, extraImages);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new ServletException("Error handling file upload", e);
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

