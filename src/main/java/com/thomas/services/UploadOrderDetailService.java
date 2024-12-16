package com.thomas.services;

import com.thomas.dao.OrderDetailsDao;
import com.thomas.dao.model.Order;
import com.thomas.dao.model.OrderDetails;

import java.util.List;

public class UploadOrderDetailService {

    OrderDetailsDao orderDetailsDao;

    public UploadOrderDetailService() {
        orderDetailsDao = new OrderDetailsDao();
    }

    public List<OrderDetails> getAllOrderDetails(int orderId) {
        return orderDetailsDao.findByOrderId(orderId);
    }

    public void setBeltName(OrderDetails od) {
        if (od != null) {
            String addressName = orderDetailsDao.getBeltName(od.getId());
            od.setBeltName(addressName);
        }
    }

    public boolean deleteOrderDetail(int orderItemId) {
        return orderDetailsDao.deleteOrderDetail(orderItemId);
    }
}
