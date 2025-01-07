package com.thomas;

import com.thomas.dao.model.Belts;
import com.thomas.services.UploadProductService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "IndexServlet", value = "/homePageController")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UploadProductService uploadProductService = new UploadProductService();
//        HttpSession session = request.getSession();
        List<Belts> newArrivalsList = uploadProductService.getNewArrivals();
//        session.setAttribute("newArrivalsList", newArrivalsList);
//        response.sendRedirect(request.getContextPath() + "/index.jsp");
        request.setAttribute("newArrivalsList", newArrivalsList);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}