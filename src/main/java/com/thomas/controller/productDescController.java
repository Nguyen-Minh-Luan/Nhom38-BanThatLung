package com.thomas.controller;

import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "productDescController", value = "/admin/table/products/createProductDescription")
public class productDescController extends HttpServlet {
    UploadProductService uploadProductService = new UploadProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/frontend/AdminPage/updateProductDescription/updateProductDesc.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String description = request.getParameter("Description");
        uploadProductService.saveDesc(id,description);
        response.sendRedirect("/admin/table/products");
    }
}
