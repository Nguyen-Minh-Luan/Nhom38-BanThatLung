package com.thomas.controller;

import com.thomas.services.TokenService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "confirmActiveController", value = "/confirmSuccess")
public class confirmActiveController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TokenService tokenService = new TokenService();
        String token = request.getParameter("token");
        boolean isValid = tokenService.verifyToken(token);
        boolean active = tokenService.activeUser(token);
        if (isValid && active) {
            request.setAttribute("active", 1);
        }
        request.getRequestDispatcher("/frontend/signInPage/confirmSuccessSignUp/confirmSuccess.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
