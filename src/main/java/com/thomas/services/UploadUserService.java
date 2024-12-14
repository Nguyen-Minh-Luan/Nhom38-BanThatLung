package com.thomas.services;

import com.thomas.dao.UserDao;
import com.thomas.dao.model.User;

import java.time.LocalDate;
import java.util.List;

public class UploadUserService {
    UserDao userDao;

    public UploadUserService() {
        this.userDao = new UserDao();
    }

    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }

    public User getUser(int userId) {
        return userDao.findUserById(userId);
    }
    public boolean deleteUser(int userId) {
        return userDao.deleteUserById(userId);
    }
    public boolean updateUser(int userId, String userName, String email, String gender, int role, LocalDate birthDate, long phone, int isDeleted) {
        User user = new User();
        user.setId(userId);
        user.setName(userName);
        user.setEmail(email);
        user.setGender(gender);
        user.setRole(role);
        user.setPhone(phone);
        user.setIsDeleted(isDeleted);
        user.setDateOfBirth(birthDate);
        return userDao.updateUser(user);
    }

    public boolean saveUser(String userName, String email, String password, String gender, int role, LocalDate birthDate, long phone, int isDeleted) {
        User user = new User();
        if (userDao.findUserEmail(email) != null) {
            return false;
        }
        user.setName(userName);
        user.setEmail(email);
        user.setPassword(password);
        user.setGender(gender);
        user.setRole(role);
        user.setPhone(phone);
        user.setIsDeleted(isDeleted);
        user.setDateOfBirth(birthDate);
        user.setCreateAt(LocalDate.now());
        return userDao.registerUser(user);
    }
}
