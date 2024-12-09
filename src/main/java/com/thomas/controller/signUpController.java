package com.thomas.controller;

import com.thomas.services.SignUpService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet(name = "signUpController", value = "/signup")
public class signUpController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("auth") == null) {
            request.getRequestDispatcher("/frontend/signInPage/signUpPage/signUp.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String middleName = request.getParameter("middleName");
        String birthDateString = request.getParameter("birthDate");
        System.out.println("email: " + email
                + " password: " + password
                + " name: " + name
                + " middleName: " + middleName
                + " birthDate: " + birthDateString
        );
        DateTimeFormatter formatter = DateTimeFormatter.ISO_LOCAL_DATE;
        LocalDate birthDate = LocalDate.parse(birthDateString, formatter);
        SignUpService service = new SignUpService();
        service.signUp(email, password, name, middleName, birthDate);
        request.getRequestDispatcher("/frontend/signInPage/signInPage.jsp").forward(request, response);
    }
}

