package com.thomas.controller;

import com.thomas.dao.ProductDao;
import com.thomas.dao.model.Belts;
import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "allProductController", value = "/allProduct")
public class allProductController extends HttpServlet {
    UploadProductService uploadProductService = new UploadProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        List<Belts> beltsList = uploadProductService.getAllProductsForDisplay();
        request.setAttribute("listBelt", beltsList);
        session.setAttribute("beltsList", beltsList);
        request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}