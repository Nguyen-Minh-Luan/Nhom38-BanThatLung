package com.thomas.controller;

import com.thomas.dao.model.belts;
import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.logging.Logger;

@WebServlet(name = "newArrivalController", value = "/newArrival")
public class newArrivalController extends HttpServlet {
    UploadProductService uploadProductService = new UploadProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get sorting parameter
        String descPrice = request.getParameter("descPrice");

        // Get all products first
        List<belts> newArrivalBelts = uploadProductService.getNewArrivalProducts();

        // Apply sorting if descPrice parameter exists and is not empty
        if (descPrice != null && !descPrice.trim().isEmpty()) {
            switch (descPrice.trim()) {
                case "increase":
                    newArrivalBelts.sort(Comparator.comparing(belts::getPrice));
                    break;
                case "decrease":
                    newArrivalBelts.sort(Comparator.comparing(belts::getPrice).reversed());
                    break;
                case "hotSelling":
                    newArrivalBelts = uploadProductService.getNewArrivalProductsHotSeliing();
                    break;
            }
        }

        // Safely parse page parameter
        int currentPage = 1;
        String pageParam = request.getParameter("page");
        if (pageParam != null && !pageParam.trim().isEmpty()) {
            try {
                currentPage = Math.max(1, Integer.parseInt(pageParam.trim()));
            } catch (NumberFormatException e) {
                // Log error but continue with default page 1
                Logger.getLogger(getClass().getName()).warning("Invalid page parameter: " + pageParam);
            }
        }

        // Calculate pagination
        int itemsPerPage = 20;
        int totalItems = newArrivalBelts.size();
        int totalPages = Math.max(1, (int) Math.ceil((double) totalItems / itemsPerPage));

        // Ensure currentPage doesn't exceed totalPages
        currentPage = Math.min(currentPage, totalPages);

        // Calculate indices
        int startIndex = (currentPage - 1) * itemsPerPage;
        int endIndex = Math.min(startIndex + itemsPerPage, totalItems);

        // Get sublist for current page
        List<belts> beltsForPage = startIndex < totalItems
                ? newArrivalBelts.subList(startIndex, endIndex)
                : new ArrayList<>();

        // Set attributes
        request.setAttribute("beltsForPage", beltsForPage);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("descPrice", descPrice);

        // Forward to JSP
        request.getRequestDispatcher("/frontend/newArrivalPage/newArrivalPage.jsp")
                .forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

}