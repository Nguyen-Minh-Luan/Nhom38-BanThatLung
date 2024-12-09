package com.thomas.dao;

import com.thomas.dao.db.JDBIConnect;
import com.thomas.dao.model.User;

import java.sql.Timestamp;

public class UserDao {
    public User findUserName(String username) {
        return JDBIConnect.get().withHandle(h -> {
            return h.createQuery("select * from users where name = :username").bind("username", username).mapToBean(User.class).findFirst().orElse(null);
        });
    }

    public User findUserEmail(String email) {
        return JDBIConnect.get().withHandle(h -> {
            return h.createQuery("select * from users where email = :email").bind("email", email).mapToBean(User.class).findFirst().orElse(null);
        });
    }
    public boolean registerUser(User user) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "INSERT INTO users (name, email, dateOfBirth, password, createAt, isDeleted, role) " +
                    "VALUES (:name, :email, :dateOfBirth, :password, :createAt, :isDeleted, :role)";
            return h.createUpdate(sql)
                    .bind("name", user.getName())
                    .bind("email", user.getEmail())
                    .bind("dateOfBirth", Timestamp.valueOf(user.getDateOfBirth().atStartOfDay()))
                    .bind("password", user.getPassword())
                    .bind("createAt", Timestamp.valueOf(user.getCreateAt().atStartOfDay()))
                    .bind("isDeleted", user.getIsDeleted())
                    .bind("role", user.getRole())
                    .execute() > 0;
        });
    }

}
