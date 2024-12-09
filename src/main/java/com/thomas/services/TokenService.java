package com.thomas.services;

import com.thomas.dao.UserDao;
import com.thomas.dao.model.User;

public class TokenService {
    public boolean updatePasswordByToken(String token,String password) {
        UserDao userDao = new UserDao();
        boolean isDone = userDao.setPasswordByToken(token,password);
        return isDone;
    }
    public boolean verifyToken(String token) {
        UserDao userDao = new UserDao();
        return userDao.verifyToken(token);
    }
    public void saveResetToken(String toEmail,String token) {
        UserDao userDao = new UserDao();
        userDao.saveResetToken(toEmail,token);
    }
}
