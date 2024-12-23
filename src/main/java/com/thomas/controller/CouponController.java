package com.thomas.controller;

import com.thomas.services.UploadCouponService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CouponController", value = "/coupon")
public class CouponController extends HttpServlet {
    UploadCouponService uploadCouponService = new UploadCouponService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String coupon = request.getParameter("code");
        if (coupon != null) {
            double discountPercent = uploadCouponService.getCouponByCode(coupon);
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            try (PrintWriter out = response.getWriter()) {
                out.write("{");
                out.write("\"discountPercent\": " + discountPercent);
                out.write("}");
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

