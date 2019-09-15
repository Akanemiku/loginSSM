package com.bnuz.login.dao;

import com.bnuz.login.entity.User;

public interface UserDao {
    User findByName(String name);

    int updatePassword(User user);

    int insertUser(User user);
}
