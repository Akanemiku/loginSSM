package com.bnuz.login.entity;

import lombok.Data;

@Data
public class User {
    private Integer userId;
    private String name;
    private String password;
    private String idcard;
}
