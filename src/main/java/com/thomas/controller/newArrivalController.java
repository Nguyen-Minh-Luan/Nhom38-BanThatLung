package com.thomas.controller;

import com.thomas.dao.model.Belts;
import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
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
        List<Belts> newArrivalBelts = uploadProductService.getNewArrivalProducts();

        // Apply sorting if descPrice parameter exists and is not empty
        if (descPrice != null && !descPrice.trim().isEmpty()) {
            switch (descPrice.trim()) {
                case "increase":
                    newArrivalBelts.sort(Comparator.comparing(Belts::getPrice));
                    break;
                case "decrease":
                    newArrivalBelts.sort(Comparator.comparing(Belts::getPrice).reversed());
                    break;
                case "hotSelling":
                    newArrivalBelts = uploadProductService.getNewArrivalProductsHotSeliing();
                    for(Belts b : newArrivalBelts) {
                        b.setImage(uploadProductService.getProductImages(b.getId()));
                    }
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
                Logger.getLogger(getClass().getName()).warning("Invalid page parameter: " + pageParam);
            }
        }

        int itemsPerPage = 10;
        int totalItems = newArrivalBelts.size();
        int totalPages = Math.max(1, (int) Math.ceil((double) totalItems / itemsPerPage));

        currentPage = Math.min(currentPage, totalPages);

        int startIndex = (currentPage - 1) * itemsPerPage;
        int endIndex = Math.min(startIndex + itemsPerPage, totalItems);

        List<Belts> beltsForPage = startIndex < totalItems
                ? newArrivalBelts.subList(startIndex, endIndex)
                : new ArrayList<>();

        request.setAttribute("beltsForPage", beltsForPage);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("descPrice", descPrice);

        request.getRequestDispatcher("/frontend/newArrivalPage/newArrivalPage.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

}