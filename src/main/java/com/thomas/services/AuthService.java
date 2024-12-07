package com.thomas.services;

import com.thomas.dao.UserDao;
import com.thomas.dao.model.User;

public class AuthService {
    public User checkLogin(String email, String password) {
        UserDao udao = new UserDao();
        User u = udao.findUserEmail(email);
        if (u.getImage().equals("null")) {
            u.setImage(null);
        }
        if (password != null && password.equals(u.getPassword())) {
            u.setPassword(null);
            return u;
        }
        return null;
    }
}
