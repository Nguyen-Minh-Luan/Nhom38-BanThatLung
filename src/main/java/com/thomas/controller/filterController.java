package com.thomas.controller;

import com.thomas.dao.model.Belts;
import com.thomas.services.UploadProductService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "filterController", value = "/filter")
public class filterController extends HttpServlet {
    //khi bấm submit thì nó sẽ trả về type rồi dựa vào đó để lấy ra list cần dùng
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        UploadProductService uploadProductService = new UploadProductService();
//        String type = request.getParameter("type");
        double min = Double.parseDouble(request.getParameter("minPrice"));
        double max = Double.parseDouble(request.getParameter("maxPrice"));
        session.getAttribute("beltsList");
        List<Belts> filteredList = (List<Belts>) session.getAttribute("beltsList");
        session.setAttribute("beltsList", uploadProductService.filterProduct(filteredList, min, max));
        request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
//        if (type.equals("all")) {
////            List<Belts> filteredList = (List<Belts>) session.getAttribute("beltsList");
//            List<Belts> beltsList = uploadProductService.filterProduct(filteredList, min, max);
//            request.setAttribute("allProductList", beltsList);
//            request.setAttribute("type", type);
//        }
//        if (type.equals("men")) {
//            List<Belts> beltsList = uploadProductService.filterProduct(uploadProductService.getMaleOrFemaleAndMaterialProducts("M", "all"), min, max);
//            request.setAttribute("beltsList", beltsList);
//        }
//        if (type.equals("menLeather")) {
//            List<Belts> beltsList = uploadProductService.filterProduct(uploadProductService.getMaleOrFemaleAndMaterialProducts("M", "da"), min, max);
//            request.setAttribute("beltsList", beltsList);
//        }
//        if (type.equals("menCanvas")) {
//            List<Belts> beltsList = uploadProductService.filterProduct(uploadProductService.getMaleOrFemaleAndMaterialProducts("M", "canvas"), min, max);
//            request.setAttribute("beltsList", beltsList);
//        }
//        if (type.equals("women")) {
//            List<Belts> beltsList = uploadProductService.filterProduct(uploadProductService.getMaleOrFemaleAndMaterialProducts("W", "all"), min, max);
//            request.setAttribute("beltsList", beltsList);
//        }
//        if (type.equals("womenLeather")) {
//            List<Belts> beltsList = uploadProductService.filterProduct(uploadProductService.getMaleOrFemaleAndMaterialProducts("W", "da"), min, max);
//            request.setAttribute("beltsList", beltsList);
//        }
//        if (type.equals("womenCanvas")) {
//            List<Belts> beltsList = uploadProductService.filterProduct(uploadProductService.getMaleOrFemaleAndMaterialProducts("W", "canvas"), min, max);
//            request.setAttribute("beltsList", beltsList);
//        }

//        request.getRequestDispatcher("/frontend/allProduct/allProduct1.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}