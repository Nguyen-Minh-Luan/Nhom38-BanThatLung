package com.thomas.dao;

import com.thomas.dao.db.JDBIConnect;
import com.thomas.dao.model.OrderDetails;

import java.util.List;

public class OrderDetailsDao {
    public OrderDetailsDao() {

    }

    public List<OrderDetails> findByOrderId(int id) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "select * from orderDetails where orderId=:id";
            return h.createQuery(sql).bind("id", id).mapToBean(OrderDetails.class).list();
        });
    }

    public String getBeltName(int id) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT b.name " +
                    "FROM orderDetails od " +
                    "JOIN belts b ON b.id = od.beltId " +
                    "WHERE od.id = :id";
            return h.createQuery(sql)
                    .bind("id", id)
                    .mapTo(String.class)
                    .findFirst()
                    .orElse(null);
        });
    }

    public boolean deleteOrderDetail(int orderItemId) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "DELETE FROM orderDetails WHERE orderId=:orderItemId";
            return h.createUpdate(sql).bind("orderItemId", orderItemId).execute() > 0;
        });
    }
}
