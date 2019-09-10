package com.bnuz.login.entity;

import lombok.Data;

import java.util.Date;

@Data
public class Record{
    private Integer userId;
    private Integer recordId;
    private Date recordTime;
}
