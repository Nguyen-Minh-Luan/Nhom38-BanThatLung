package com.thomas.controller;

import com.thomas.dao.model.belts;
import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "newArrivalController", value = "/newArrival")
public class newArrivalController extends HttpServlet {
    UploadProductService uploadProductService = new UploadProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<belts> newArrivalBelts = uploadProductService.getNewArrivalProducts();
        request.setAttribute("newArrivalBelts", newArrivalBelts);
        request.getRequestDispatcher("/frontend/newArrivalPage/newArrivalPage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}

