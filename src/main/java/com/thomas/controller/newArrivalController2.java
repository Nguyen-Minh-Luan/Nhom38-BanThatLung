package com.thomas.controller;

import com.thomas.dao.ProductDao;
import com.thomas.dao.model.belts;
import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "newArrivalController2", value = "/newArrival2")
public class newArrivalController2 extends HttpServlet {
    UploadProductService uploadProductService = new UploadProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
//        String button = request.getParameter("seeMore");
        List<belts> newArrivalsList = uploadProductService.getNewArrivals();
        out.println(newArrivalsList);
        request.setAttribute("newArrivalsList", newArrivalsList);
        request.getRequestDispatcher("/frontend/newArrivalPage/newArrival2.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}