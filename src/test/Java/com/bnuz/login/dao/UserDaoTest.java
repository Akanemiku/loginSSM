package com.bnuz.login.dao;

import com.bnuz.login.BaseTest;
import com.bnuz.login.entity.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class UserDaoTest extends BaseTest {

    @Autowired
    private UserDao userDao;

    @Test
    public void findByName(){
        User user = userDao.findByName("学生甲");
        System.out.println(user.getPassword());
    }

    @Test
    public void updatePassword(){
        User user = userDao.findByName("学生甲");
        user.setUserId(1);
        user.setPassword("654321");
        userDao.updatePassword(user);
    }

}