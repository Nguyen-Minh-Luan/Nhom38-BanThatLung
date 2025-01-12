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
            String bigTitle = "Tất cả Sản Phẩm";
            beltsList = uploadProductService.getAllProductsForDisplay();
            request.setAttribute("beltsList", beltsList);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            request.setAttribute("type", type);
            session.setAttribute("allProductList", beltsList);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("men")) {
            String title = "Nam";
            String bigTitle = "Thắt Lưng Nam";
            beltsList = uploadProductService.getMaleOrFemaleAndMaterialProducts("M", "all");
            request.setAttribute("beltsList", beltsList);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            request.setAttribute("type", type);
            session.setAttribute("menProductList", beltsList);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("women")) {
            String title = "Nữ";
            String bigTitle = "Thắt Lưng Nữ";
            beltsList = uploadProductService.getMaleOrFemaleAndMaterialProducts("W", "all");
            request.setAttribute("beltsList", beltsList);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            request.setAttribute("type", type);
            session.setAttribute("womenProductList", beltsList);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("menLeather")) {
            String title = "Nam";
            String bigTitle = "Thắt Lưng Da Nam";
            beltsList = uploadProductService.getMaleOrFemaleAndMaterialProducts("M", "leather");
            request.setAttribute("beltsList", beltsList);
            request.setAttribute("title", title);
            request.setAttribute("bigTitle", bigTitle);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("menCanvas")) {
            String title = "Nam Canvas";
            String bigTitle = "Thắt lưng Canvas Nam";
            beltsList = uploadProductService.getMaleOrFemaleAndMaterialProducts("M", "canvas");
            request.setAttribute("beltsList", beltsList);
            request.setAttribute("title", bigTitle);
            request.setAttribute("bigTitle", bigTitle);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("womenLeather")) {
            beltsList = uploadProductService.getMaleOrFemaleAndMaterialProducts("W", "da");
            request.setAttribute("beltsList", beltsList);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("womenCanvas")) {
            beltsList = uploadProductService.getMaleOrFemaleAndMaterialProducts("W", "canvas");
            request.setAttribute("beltsList", beltsList);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
        if (type.equals("collection")) {
            beltsList = uploadProductService.getAllProductsForDisplay();
            request.setAttribute("beltsList", beltsList);
            request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}