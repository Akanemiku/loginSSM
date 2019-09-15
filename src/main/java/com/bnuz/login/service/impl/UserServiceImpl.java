package com.bnuz.login.service.impl;

import com.bnuz.login.dao.UserDao;
import com.bnuz.login.entity.User;
import com.bnuz.login.service.UserService;
import com.bnuz.login.utils.KeyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.security.NoSuchAlgorithmException;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    public Boolean isLogin(String name, String password) {
        User user = userDao.findByName(name);
        try {
            password = KeyUtils.sha1(password);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        if (user == null)
            return false;
        else
            return user.getPassword().equals(password);
    }

    public User getUser(String name) {
        return userDao.findByName(name);
    }

    public int modifyPassword(User user) {
        return userDao.updatePassword(user);
    }

    public int addUser(User user) {
        if (user != null) {
            try {
                user.setPassword(KeyUtils.sha1(user.getPassword()));
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
            return userDao.insertUser(user);
        } else {
            return 0;
        }
    }
}
