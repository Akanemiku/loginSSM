package com.bnuz.login.service;

import com.bnuz.login.entity.User;

public interface UserService {
    Boolean isLogin(String name,String password);

    User getUser(String name);

    int modifyPassword(User user);

    int addUser(User user);

}
