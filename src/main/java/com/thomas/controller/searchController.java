package com.thomas.controller;

import com.thomas.dao.model.Belts;
import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "searchController", value = "/search")
public class searchController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UploadProductService uploadProductService = new UploadProductService();
        String mainImage = "";
        String keyword = request.getParameter("keyword");
        request.setAttribute("keyword", keyword);
        List<Belts> beltsList = uploadProductService.searchPrroduct(keyword);
        request.setAttribute("beltsList", beltsList);
        request.getRequestDispatcher("frontend/allProduct/allProduct1.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}