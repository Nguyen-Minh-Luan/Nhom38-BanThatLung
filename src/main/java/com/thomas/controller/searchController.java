package com.thomas.controller;

import com.thomas.dao.model.Belts;
import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

@WebServlet(name = "searchController", value = "/search")
public class searchController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UploadProductService uploadProductService = new UploadProductService();
        String mainImage = "assets/images/Gray Minimalist New Collection Banner (1) 1.jpg";
        String keyword = request.getParameter("keyword");
        request.setAttribute("keyword", keyword);
        List<Belts> beltsList = uploadProductService.searchProduct(keyword);
        int totalProduct = beltsList.size();
//        request.setAttribute("beltsList", beltsList);
        request.setAttribute("totalProduct", totalProduct);
        request.setAttribute("mainImage", mainImage);
        pagingforPage(request,beltsList);
        request.getRequestDispatcher("frontend/allProduct/allProduct1.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
    public void pagingforPage(HttpServletRequest request, List<Belts> beltsList) {
        HttpSession session = request.getSession();
        int currentPage = 1;
        String pageParam = request.getParameter("page");
        if (pageParam != null && !pageParam.trim().isEmpty()) {
            try {
                currentPage = Math.max(1, Integer.parseInt(pageParam.trim()));
            } catch (NumberFormatException e) {
                Logger.getLogger(getClass().getName()).warning("Invalid page parameter: " + pageParam);
            }
        }

        int totalProduct = beltsList.size();
        int itemPerPage = 12;
        int totalPages = totalProduct / itemPerPage;
        if (totalProduct % itemPerPage != 0) {
            totalPages += 1;
        }
        currentPage = Math.min(currentPage, totalPages);
        int startIndex = (currentPage - 1) * itemPerPage; // lấy sản phẩm tiếp theo trong danh sách
        int endIndex = Math.min(startIndex + itemPerPage, totalProduct);
        List<Belts> beltsForPage = startIndex < totalProduct // tạo ra 1 list mới để chứa những sản phẩm kế tiếp trong trang hiện tại
                ? beltsList.subList(startIndex, endIndex)
                : new ArrayList<>();

        request.setAttribute("totalProduct", totalProduct);
        request.setAttribute("totalPages", totalPages);
        request.setAttribute("currentPage", currentPage);
        session.setAttribute("beltsList", beltsForPage);
    }
}