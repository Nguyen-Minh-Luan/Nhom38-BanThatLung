package com.thomas.controller;

import com.thomas.dao.model.CartItem;
import com.thomas.dao.model.belts;
import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet(name = "CartController", value = "/Cart")
public class CartController extends HttpServlet {
    UploadProductService uploadProductService = new UploadProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Map<Integer, CartItem> cart = (Map<Integer, CartItem>) session.getAttribute("cart");

        if (cart == null) {
            cart = new HashMap<Integer, CartItem>();
            session.setAttribute("cart", cart);
        }
        int totalOrders = cart.size();
        double totalPrice = 0;
        for (CartItem cartItem : cart.values()) {
            totalPrice += cartItem.getPrice();
        }
        if (request.getParameter("message") != null) {
            String message = request.getParameter("message");
            if (message.equals("getCartSize")) {
                response.setContentType("text/plain; charset=UTF-8");
                response.getWriter().write(String.valueOf(totalOrders));
                return;
            }
        }
        List<belts> suggestionBelts = uploadProductService.getRandomBelts();
        request.setAttribute("suggestionBelts", suggestionBelts);
        request.setAttribute("totalPrice", totalPrice);
        request.setAttribute("totalOrders", totalOrders);
        request.setAttribute("cart", cart);
        request.getRequestDispatcher("/frontend/cartPage/cartPage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message = request.getParameter("message");
        HttpSession session = request.getSession();
        Map<Integer, CartItem> cart = (Map<Integer, CartItem>) session.getAttribute("cart");
        if (cart == null) {
            cart = new HashMap<>();
            session.setAttribute("cart", cart);
        }
        if ("add".equals(message)) {
            String beltName = request.getParameter("beltName");
            double price = Double.parseDouble(request.getParameter("price"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            int beltId = Integer.parseInt(request.getParameter("beltId"));
            belts belt = uploadProductService.getProductById(beltId);
            belt.setTag(uploadProductService.getAllCategoriesById(beltId));

            CartItem item = cart.get(beltId);
            if (item == null) {
                item = new CartItem(belt, quantity, price);
                cart.put(beltId, item);
            } else {
                item.setQuantity(item.getQuantity() + quantity);
            }
        } else if ("remove".equals(message)) {
            int beltId = Integer.parseInt(request.getParameter("beltId"));
            if (cart.remove(beltId) != null) {
                session.setAttribute("cart", cart);
                int totalOrders = cart.size() * 15000;
                double totalPrice = 0;
                for (CartItem cartItem : cart.values()) {
                    totalPrice += cartItem.getPrice() * cartItem.getQuantity();
                }
                double totalCost = totalPrice + 30.000;
                if (cart.size() == 0) {
                    totalCost = 0;
                }
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                try (PrintWriter out = response.getWriter()) {
                    out.write("{");
                    out.write("\"totalPrice\": " + totalPrice + ",");
                    out.write("\"totalCost\": " + totalCost + ",");
                    out.write("\"totalOrders\": " + totalOrders);
                    out.write("}");
                }
                response.setStatus(200);

            } else {
                response.setStatus(400);
            }
        } else if (message.equals("update")) {
            int beltId = Integer.parseInt(request.getParameter("beltId"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            cart.get(beltId).setQuantity(quantity);
            session.setAttribute("cart", cart);
            int totalOrders = cart.size() * 15000;
            double totalPrice = 0;
            for (CartItem cartItem : cart.values()) {
                totalPrice += cartItem.getPrice() * cartItem.getQuantity();
            }
            double totalCost = totalPrice + 30.000;
            if (cart.size() == 0) {
                totalCost = 0;
            }
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            try (PrintWriter out = response.getWriter()) {
                out.write("{");
                out.write("\"totalPrice\": " + totalPrice + ",");
                out.write("\"totalCost\": " + totalCost + ",");
                out.write("\"totalOrders\": " + totalOrders);
                out.write("}");
            }
            response.setStatus(200);

        } else {
            response.setStatus(400);
        }

    }
}

