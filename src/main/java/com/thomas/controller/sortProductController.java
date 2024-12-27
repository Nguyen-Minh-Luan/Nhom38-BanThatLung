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

@WebServlet(name = "sortProductController", value = "/sort")
public class sortProductController extends HttpServlet {
    UploadProductService uploadProductService = new UploadProductService();
    ProductDao productDao = new ProductDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String sort = request.getParameter("desPrice");
        List<Belts> sortedList = uploadProductService.getSortedListBelts(sort);
        out.print(sortedList);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}