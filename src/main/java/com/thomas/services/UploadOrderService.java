package com.thomas.services;

import com.thomas.dao.OrderDao;
import com.thomas.dao.model.Order;

import java.util.List;

public class UploadOrderService {
    OrderDao orderDao;

    public UploadOrderService() {
        orderDao = new OrderDao();
    }

    public List<Order> getAllOrders() {
        return orderDao.getAllOrder();
    }

    public void setUserName(Order order) {
        if (order != null) {
            String orderName = orderDao.getUserName(order.getId());
            order.setUserName(orderName);
        }
    }

    public void setPaymentName(Order order) {
        if (order != null) {
            String paymentName = orderDao.getPaymentName(order.getId());
            order.setPaymentMethod(paymentName);
        }
    }

    public void setAddressName(Order order) {
        if (order != null) {
            String addressName = orderDao.getAddress(order.getId());
            order.setAddresse(addressName);
        }
    }

    public Order getOrderById(int id) {
        return orderDao.getOrderById(id);
    }

    public boolean deteleOrder(int orderId) {
        return orderDao.deleteOrderById(orderId);
    }
}
