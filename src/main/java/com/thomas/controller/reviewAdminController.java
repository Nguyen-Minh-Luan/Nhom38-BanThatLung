package com.thomas.controller;

import com.thomas.dao.model.Product;
import com.thomas.dao.model.Review;
import com.thomas.services.UploadReviewService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "reviewAdminController", value = "/admin/table/reviews")
public class reviewAdminController extends HttpServlet {
    UploadReviewService uploadReviewService = new UploadReviewService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Review> reviewList = uploadReviewService.getReviews();
        List<String> beltNames = new ArrayList<String>();

        for (Review review : reviewList) {
            uploadReviewService.setReviewerName(review);
            uploadReviewService.setProductName(review);
        }
        request.setAttribute("reviewList", reviewList);
        request.getRequestDispatcher("/frontend/AdminPage/allReview/allReview.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String message = request.getParameter("message");
        int reviewId = 0;
        if (message.equals("delete")) {
            reviewId = Integer.parseInt(request.getParameter("reviewId"));
            uploadReviewService.deleteReview(reviewId);
            response.sendRedirect(request.getContextPath() + "/admin/table/reviews");
        }

    }
}
