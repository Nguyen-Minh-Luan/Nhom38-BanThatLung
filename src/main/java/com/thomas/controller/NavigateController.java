package com.thomas.controller;

import com.thomas.dao.model.Belts;
import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

@WebServlet(name = "allProductController", value = "/navigate")
public class NavigateController extends HttpServlet {
    UploadProductService uploadProductService = new UploadProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String type = request.getParameter("type");
        List<Belts> beltsList;
        if (type.equals("all")) {
            String title = "Sản Phẩm";
            String mainImage = "/assets/images/allProduct.png";
            String bigTitle = "Tất cả Sản Phẩm";
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
//            request.setAttribute("type", type);
            session.setAttribute("type", type);
            request.setAttribute("mainImage", mainImage);
            List<Belts> listBelt = uploadProductService.getAllProductsForDisplay();
            request.setAttribute("listBelt",listBelt);
            pagingforPage(request, uploadProductService.getAllProductsForDisplay());
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("men")) {
            String title = "Nam";
            String bigTitle = "Thắt Lưng Nam";
            String mainImage = "assets/images/banner/z6088271164003_2200fec21842ecda09fe85ab32825a86.jpg";
            request.setAttribute("mainImage", mainImage);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            request.setAttribute("type", type);
            request.setAttribute("mainImage", mainImage);
            request.setAttribute("listBelt",uploadProductService.getMaleOrFemaleAndMaterialProducts("M", "all"));
            pagingforPage(request, uploadProductService.getMaleOrFemaleAndMaterialProducts("M", "all"));
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("women")) {
            String title = "Nữ";
            String bigTitle = "Thắt Lưng Nữ";
            String mainImage = "assets/images/banner/z6088271164002_95c694291ffaeb61697b3ab7fdaf8065.png";
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            request.setAttribute("type", type);
            request.setAttribute("mainImage", mainImage);
            request.setAttribute("listBelt",uploadProductService.getMaleOrFemaleAndMaterialProducts("F", "all"));
            pagingforPage(request, uploadProductService.getMaleOrFemaleAndMaterialProducts("F", "all"));
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("menLeather")) {
            String title = "Nam";
            String bigTitle = "Thắt Lưng Da Nam";
            String mainImage = "assets/images/banner/z6088271164003_2200fec21842ecda09fe85ab32825a86.jpg";
            request.setAttribute("mainImage", mainImage);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            request.setAttribute("type", type);
            request.setAttribute("listBelt",uploadProductService.getMaleOrFemaleAndMaterialProducts("M", "da"));
            pagingforPage(request, uploadProductService.getMaleOrFemaleAndMaterialProducts("M", "da"));
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("menCanvas")) {
            String title = "Nam Canvas";
            String bigTitle = "Thắt lưng Canvas Nam";
            String mainImage = "assets/images/banner/z6088271164003_2200fec21842ecda09fe85ab32825a86.jpg";
            request.setAttribute("mainImage", mainImage);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            request.setAttribute("type", type);
            request.setAttribute("listBelt",uploadProductService.getMaleOrFemaleAndMaterialProducts("M", "canvas"));
            pagingforPage(request, uploadProductService.getMaleOrFemaleAndMaterialProducts("M", "canvas"));
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("womenLeather")) {
            String title = "Nữ Leather";
            String bigTitle = "Thắt lưng Da Nữ";
            String mainImage = "assets/images/banner/z6088271164002_95c694291ffaeb61697b3ab7fdaf8065.png";
            request.setAttribute("mainImage", mainImage);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            request.setAttribute("type", type);
            request.setAttribute("listBelt",uploadProductService.getMaleOrFemaleAndMaterialProducts("F", "da"));
            pagingforPage(request, uploadProductService.getMaleOrFemaleAndMaterialProducts("F", "da"));
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("womenCanvas")) {
            String title = "Nữ Canvas";
            String bigTitle = "Thắt lưng Canvas Nữ";
            String mainImage = "assets/images/banner/z6088271164002_95c694291ffaeb61697b3ab7fdaf8065.png";
            request.setAttribute("mainImage", mainImage);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            request.setAttribute("type", type);
            request.setAttribute("listBelt",uploadProductService.getMaleOrFemaleAndMaterialProducts("F", "canvas"));
            pagingforPage(request, uploadProductService.getMaleOrFemaleAndMaterialProducts("F", "canvas"));
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("collection")) {
            String title = "Bộ sưu tập";
            String bigTitle = "Bộ sưu tập";
            beltsList = uploadProductService.getAllProductsForDisplay();
            int totalProduct = beltsList.size();
            request.setAttribute("totalProduct", totalProduct);
            request.setAttribute("beltsList", beltsList);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            session.setAttribute("beltsList", beltsList);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    public void pagingforPage(HttpServletRequest request, List<Belts> beltsList) {
        HttpSession session = request.getSession();
        int currentPage = 1;
        String pageParam = request.getParameter("page");
        if (pageParam != null && !pageParam.trim().isEmpty()) {
            try {
                currentPage = Math.max(1, Integer.parseInt(pageParam.trim()));
            } catch (NumberFormatException e) {
                Logger.getLogger(getClass().getName()).warning("Invalid page parameter: " + pageParam);
            }
        }

        int totalProduct = beltsList.size();
        int itemPerPage = 12;
        int totalPages = totalProduct / itemPerPage;
        if (totalProduct % itemPerPage != 0) {
            totalPages += 1;
        }
        currentPage = Math.min(currentPage, totalPages);
        int startIndex = (currentPage - 1) * itemPerPage; // lấy sản phẩm tiếp theo trong danh sách
        int endIndex = Math.min(startIndex + itemPerPage, totalProduct);
        List<Belts> beltsForPage = startIndex < totalProduct // tạo ra 1 list mới để chứa những sản phẩm kế tiếp trong trang hiện tại
                ? beltsList.subList(startIndex, endIndex)
                : new ArrayList<>();

        request.setAttribute("totalProduct", totalProduct);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("currentPage", currentPage);
        session.setAttribute("beltsList", beltsForPage);
    }
}