package com.thomas.services;

import com.thomas.dao.UserDao;
import com.thomas.dao.model.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

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

    public boolean updateUserPassword(String password, int userId) {
        User user = userDao.findUserById(userId);
        user.setPassword(password);
        return userDao.updateUserPassword(user);
    }

    public boolean updateEmail(HttpServletRequest request, String email, int userId) {
        User user = userDao.findUserById(userId);
        user.setEmail(email);
        HttpSession session = request.getSession();
        session.setAttribute("auth", user);
        return userDao.updateUser(user);
    }

    public void updateImagePath(HttpServletRequest request, int userId, String mainImage) {
        User user = userDao.findUserById(userId);
        user.setImage(mainImage);
        HttpSession session = request.getSession();
        session.setAttribute("auth", user);
        userDao.updateUserImage(user);
    }

    public void updateUserInfo(int userId, String gender, LocalDate birthday) {
        User user = userDao.findUserById(userId);
        user.setGender(gender);
        user.setDateOfBirth(birthday);
        userDao.updateUser(user);
    }
}
