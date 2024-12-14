package com.thomas.dao;

import com.thomas.dao.db.JDBIConnect;
import com.thomas.dao.model.Order;

import java.util.ArrayList;
import java.util.List;

public class OrderDao {
    public List<Order> getAllOrder() {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "select * from orders";
            return h.createQuery(sql).mapToBean(Order.class).list();
        });
    }

    public Order getOrderById(int id) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "select * from orders where id = :id";
            return h.createQuery(sql).bind("id", id).mapToBean(Order.class).findFirst().orElse(null);
        });
    }

    public String getUserName(int id) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT u.name " +
                    "FROM orders o " +
                    "JOIN users u ON u.id = o.userId " +
                    "WHERE o.id = :id";
            return h.createQuery(sql)
                    .bind("id", id)
                    .mapTo(String.class)
                    .findFirst()
                    .orElse(null);
        });
    }

    public String getPaymentName(int id) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT pm.name " +
                    "FROM orders o " +
                    "JOIN paymentMethods pm ON pm.id = o.paymentMethodId " +
                    "WHERE o.id = :id";
            return h.createQuery(sql)
                    .bind("id", id)
                    .mapTo(String.class)
                    .findFirst()
                    .orElse(null);
        });
    }
}
