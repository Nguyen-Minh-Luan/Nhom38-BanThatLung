package com.thomas.controller;

import com.thomas.dao.model.Order;
import com.thomas.dao.model.OrderDetails;
import com.thomas.services.UploadOrderDetailService;
import com.thomas.services.UploadOrderService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "orderAdminController", value = "/admin/table/orders")
public class orderAdminController extends HttpServlet {
    UploadOrderService uploadOrderService = new UploadOrderService();
    UploadOrderDetailService uploadOrderDetailService = new UploadOrderDetailService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Order> orderList = uploadOrderService.getAllOrders();
        for (Order order : orderList) {
            uploadOrderService.setUserName(order);
            uploadOrderService.setPaymentName(order);
            List<OrderDetails> orderDetailsList = uploadOrderDetailService.getAllOrderDetails(order.getId());
            if (orderDetailsList.isEmpty()) {
                uploadOrderService.deteleOrder(order.getId());
            }
        }
        request.setAttribute("orderList", orderList);
        request.getRequestDispatcher("/frontend/AdminPage/allOrder/allOrder.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message = request.getParameter("message");
        if (message.equals("delete")) {
            int orderId = Integer.parseInt(request.getParameter("orderId"));
            if (uploadOrderService.deteleOrder(orderId)) {
                response.sendRedirect(request.getContextPath() + "/admin/table/orders");
            }
        }
    }
}

