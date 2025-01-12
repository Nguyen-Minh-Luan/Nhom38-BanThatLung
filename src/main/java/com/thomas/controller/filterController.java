package com.thomas.controller;

import com.thomas.dao.model.Belts;
import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "filterController", value = "/filter")
public class filterController extends HttpServlet {
    //khi bấm submit thì nó sẽ trả về type rồi dựa vào đó để lấy ra list cần dùng
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String type = request.getParameter("type");
        double price1 = Double.parseDouble(request.getParameter("price1"));
        double price2 = Double.parseDouble(request.getParameter("price2"));
        UploadProductService uploadProductService = new UploadProductService();
        if (type.equalsIgnoreCase("all")) {
            List<Belts> beltsList = uploadProductService.filterProduct(uploadProductService.getAllProductsForDisplay(), price1, price2);
        }
        request.getRequestDispatcher("/frontend/allProduct/allProduct.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}