package com.thomas.dao;

import com.thomas.dao.db.JDBIConnect;
import com.thomas.dao.model.User;

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
}
