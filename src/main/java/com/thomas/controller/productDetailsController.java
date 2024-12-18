package com.thomas.controller;

import com.thomas.dao.model.Category;
import com.thomas.dao.model.Reviews;
import com.thomas.dao.model.belts;
import com.thomas.services.UploadProductService;
import com.thomas.services.UploadReviewService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "productDetailsController", value = "/productDetails")
public class productDetailsController extends HttpServlet {
    UploadProductService uploadProductService = new UploadProductService();
    UploadReviewService uploadReviewService = new UploadReviewService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int beltId = Integer.parseInt(request.getParameter("beltId"));
        belts belt = uploadProductService.getProductById(beltId);
        belt.setImage(uploadProductService.getProductImages(beltId));
        List<Category> beltCategory = uploadProductService.getAllCategoriesById(beltId);
        List<Reviews> reviewsList = uploadReviewService.getReviewsByBeltId(beltId);
        List<String> descBeltImage = uploadProductService.getAllDescImage(beltId);
        request.setAttribute("descBeltImage", descBeltImage);
        request.setAttribute("reviewList", reviewsList);
        request.setAttribute("beltCategory", beltCategory);
        request.setAttribute("belt", belt);
        request.getRequestDispatcher("/frontend/productDetail/productDetail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}

