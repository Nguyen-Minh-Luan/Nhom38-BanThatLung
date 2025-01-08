package com.thomas.controller;

import com.thomas.dao.model.Belts;
import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "productDetail2", value = "/productDetail")
public class productDetail2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UploadProductService uploadProductService = new UploadProductService();
        String id = request.getParameter("beltID");
        int beltId = Integer.parseInt(id);
        List<String> listImage = uploadProductService.getImageProductDetail(beltId);
        List<Belts> beltsList = uploadProductService.getAllProductsForDisplay();
        request.setAttribute("belt", uploadProductService.getBeltById(beltId));
        request.getRequestDispatcher("/frontend/productDetail/productDetail2.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}