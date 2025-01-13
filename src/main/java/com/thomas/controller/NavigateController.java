package com.thomas.controller;

import com.thomas.dao.model.Belts;
import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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
            beltsList = uploadProductService.getAllProductsForDisplay();
            request.setAttribute("beltsList", beltsList);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            request.setAttribute("type", type);
            request.setAttribute("mainImage", mainImage);
            session.setAttribute("beltsList", beltsList);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("men")) {
            String title = "Nam";
            String bigTitle = "Thắt Lưng Nam";
            String mainImage = "assets/images/banner/z6088271164003_2200fec21842ecda09fe85ab32825a86.jpg";
            request.setAttribute("mainImage", mainImage);
            beltsList = uploadProductService.getMaleOrFemaleAndMaterialProducts("M", "all");
            request.setAttribute("beltsList", beltsList);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            request.setAttribute("type", type);
            session.setAttribute("beltsList", beltsList);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("women")) {
            String title = "Nữ";
            String bigTitle = "Thắt Lưng Nữ";
            String mainImage = "assets/images/banner/z6088271164002_95c694291ffaeb61697b3ab7fdaf8065.png";
            request.setAttribute("mainImage", mainImage);
            beltsList = uploadProductService.getMaleOrFemaleAndMaterialProducts("F", "all");
            request.setAttribute("beltsList", beltsList);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            request.setAttribute("type", type);
            session.setAttribute("beltsList", beltsList);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("menLeather")) {
            String title = "Nam";
            String bigTitle = "Thắt Lưng Da Nam";
            String mainImage = "assets/images/banner/z6088271164003_2200fec21842ecda09fe85ab32825a86.jpg";
            request.setAttribute("mainImage", mainImage);
            beltsList = uploadProductService.getMaleOrFemaleAndMaterialProducts("M", "da");
            request.setAttribute("beltsList", beltsList);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            session.setAttribute("beltsList", beltsList);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("menCanvas")) {
            String title = "Nam Canvas";
            String bigTitle = "Thắt lưng Canvas Nam";
            String mainImage = "assets/images/banner/z6088271164003_2200fec21842ecda09fe85ab32825a86.jpg";
            request.setAttribute("mainImage", mainImage);
            beltsList = uploadProductService.getMaleOrFemaleAndMaterialProducts("M", "canvas");
            request.setAttribute("beltsList", beltsList);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            session.setAttribute("beltsList", beltsList);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("womenLeather")) {
            String title = "Nữ Leather";
            String bigTitle = "Thắt lưng Da Nữ";
            String mainImage = "assets/images/banner/z6088271164002_95c694291ffaeb61697b3ab7fdaf8065.png";
            request.setAttribute("mainImage", mainImage);
            beltsList = uploadProductService.getMaleOrFemaleAndMaterialProducts("F", "da");
            request.setAttribute("beltsList", beltsList);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            session.setAttribute("beltsList", beltsList);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("womenCanvas")) {
            String title = "Nữ Canvas";
            String bigTitle = "Thắt lưng Canvas Nữ";
            String mainImage = "assets/images/banner/z6088271164002_95c694291ffaeb61697b3ab7fdaf8065.png";
            request.setAttribute("mainImage", mainImage);
            beltsList = uploadProductService.getMaleOrFemaleAndMaterialProducts("F", "canvas");
            request.setAttribute("beltsList", beltsList);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            session.setAttribute("beltsList", beltsList);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("collection")) {
            String title = "Bộ sưu tập";
            String bigTitle = "Bộ sưu tập";
            beltsList = uploadProductService.getAllProductsForDisplay();
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
}