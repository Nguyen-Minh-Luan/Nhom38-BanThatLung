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
    ProductDao productDao = new ProductDao();
    UploadProductService uploadProductService = new UploadProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        String type = request.getParameter("descPriceAllProduct");
        List<Belts> beltsList = (List<Belts>) session.getAttribute("beltsList");
        if(beltsList == null) {
            out.println("beltsList is null");
        }
//        List<Belts> sortedList = uploadProductService.getSortedListBelts(type, beltsList);
//        request.setAttribute("sortedList", sortedList);
//        request.getRequestDispatcher("allProducts.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}