package com.thomas.controller;

import com.thomas.dao.model.Order;
import com.thomas.services.UploadOrderService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "orderAdminController", value = "/admin/table/orders")
public class orderAdminController extends HttpServlet {
    UploadOrderService uploadOrderService = new UploadOrderService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Order> orderList = uploadOrderService.getAllOrders();
        for (Order order : orderList) {
            uploadOrderService.setUserName(order);
            uploadOrderService.setPaymentName(order);
        }
        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher("/frontend/AdminPage/allOrder/allOrder.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

