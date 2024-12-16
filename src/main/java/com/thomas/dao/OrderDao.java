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

    public String getBeltName(int id) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT b.name " +
                    "FROM orders o " +
                    "JOIN belts b ON b.id = o.beltId " +
                    "WHERE o.id = :id";
            return h.createQuery(sql)
                    .bind("id", id)
                    .mapTo(String.class)
                    .findFirst()
                    .orElse(null);
        });
    }

    public String getAddress(int id) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT CONCAT(ad.addressCity, ' ', ad.addressStreet) AS fullAddress " +
                    "FROM orders o " +
                    "JOIN addresses ad ON ad.id = o.addressesId " +
                    "WHERE o.id = :id";
            return h.createQuery(sql)
                    .bind("id", id)
                    .mapTo(String.class)
                    .findFirst()
                    .orElse(null);
        });
    }

    public boolean deleteOrderById(int orderId) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "DELETE FROM orders WHERE id = :id";
            return h.createUpdate(sql).bind("id", orderId).execute() > 0;
        });
    }
}
