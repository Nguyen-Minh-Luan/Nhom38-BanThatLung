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

@WebServlet(name = "IndexServlet", value = "/IndexServlet")
public class IndexServlet extends HttpServlet {
    public void init() throws ServletException {
        super.init();
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UploadProductService uploadProductService = new UploadProductService();
        HttpSession session = request.getSession();
        List<Belts> newArrivalsList = new ArrayList<>();
        Belts belts1 = new Belts();
        belts1.setId(1);
        belts1.setName("Belts 1");
        belts1.setPrice(500);
        newArrivalsList.add(belts1);

        Belts belts2 = new Belts();
        belts2.setId(2);
        belts2.setName("Belts 2");
        belts2.setPrice(100);
        newArrivalsList.add(belts2);

        Belts belts3 = new Belts();
        belts3.setId(3);
        belts3.setName("Belts 3");
        belts3.setPrice(300);
        newArrivalsList.add(belts3);

        Belts belts4 = new Belts();
        belts4.setId(4);
        belts4.setName("Belts 4");
        belts4.setPrice(900);
        newArrivalsList.add(belts4);
        session.setAttribute("newArrivalsList", newArrivalsList);
        response.sendRedirect(request.getContextPath() + "/index.jsp");
//        request.setAttribute("newArrivalsList", newArrivalsList);
//        request.getRequestDispatcher(request.getContextPath() + "/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}