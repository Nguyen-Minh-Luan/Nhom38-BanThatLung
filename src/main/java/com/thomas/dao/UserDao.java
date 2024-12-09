package com.thomas.dao;

import com.thomas.dao.db.JDBIConnect;
import com.thomas.dao.model.User;

import java.sql.Timestamp;

public class UserDao {
    public void saveResetToken(String toEmail, String token) {
        JDBIConnect.get().withHandle(h -> {
            String sql = "UPDATE users SET token = :token WHERE email = :email";
            return h.createUpdate(sql)
                    .bind("email", toEmail)
                    .bind("token", token)
                    .execute() > 0;
        });
    }


    public boolean verifyToken(String token) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "SELECT * FROM users WHERE token = :token";
            return h.createQuery(sql).bind("token", token).mapToMap().findOne().isPresent();
        });
    }

    public boolean setPasswordByToken(String token, String password) {
        return JDBIConnect.get().withHandle(h -> {
            String sql = "UPDATE users SET password = :password WHERE token = :token";
            return h.createUpdate(sql)
                    .bind("password", password)
                    .bind("token", token)
                    .execute() > 0;
        });
    }


    public User findUserName(String username) {
        return JDBIConnect.get().withHandle(h -> {
            return h.createQuery("select * from users where name = :username AND isDeleted = 0").bind("username", username).mapToBean(User.class).findFirst().orElse(null);
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
