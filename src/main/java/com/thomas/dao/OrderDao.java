package com.thomas.dao;

import com.thomas.dao.db.JDBIConnect;
import com.thomas.dao.model.Order;

import java.time.LocalDate;
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

    public boolean createOrder(Order order) {
        return JDBIConnect.get().withHandle(handle -> {
            String sql = "INSERT INTO orders (userID, paymentMethodId, addressesId, orderTotal, orderStatus) " +
                    "VALUES (?, ?, ?, ?, ?)";

            int result = handle.createUpdate(sql)
                    .bind(0, order.getUserId())
                    .bind(1, order.getPaymentMethodId())
                    .bind(2, order.getAddressId())
                    .bind(3, order.getOrderTotal())
                    .bind(4, order.getOrderStatus())
                    .execute();
            return result > 0;
        });
    }

    public Order getOrderLatestOrder() {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT * FROM orders ORDER BY id DESC LIMIT 1";

            return h.createQuery(sql)
                    .map((rs, ctx) -> {
                        Order latestOrder = new Order();
                        latestOrder.setId(rs.getInt("id"));
                        latestOrder.setUserId(rs.getInt("userID"));
                        latestOrder.setPaymentMethodId(rs.getInt("paymentMethodId"));
                        latestOrder.setAddressId(rs.getInt("addressesId"));
                        latestOrder.setOrderTotal(rs.getDouble("orderTotal"));
                        latestOrder.setOrderStatus(rs.getString("orderStatus"));
                        latestOrder.setOrderDate(rs.getDate("orderDate").toLocalDate());
                        latestOrder.setIsDeleted(rs.getInt("isDeleted"));
                        return latestOrder;
                    })
                    .one();
        });
    }

    public List<Order> getAllOrderByUserId(int userId) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT * FROM orders WHERE userID = ? AND isDeleted = 0";

            return h.createQuery(sql)
                    .bind(0, userId)
                    .map((rs, ctx) -> {
                        Order order = new Order();
                        order.setId(rs.getInt("id"));
                        order.setUserId(rs.getInt("userID"));
                        order.setPaymentMethodId(rs.getInt("paymentMethodId"));
                        order.setAddressId(rs.getInt("addressesId"));
                        order.setOrderTotal(rs.getDouble("orderTotal"));
                        order.setOrderStatus(rs.getString("orderStatus"));
                        order.setOrderDate(rs.getDate("orderDate").toLocalDate());
                        order.setIsDeleted(rs.getInt("isDeleted"));
                        return order;
                    })
                    .list();
        });
    }


}
