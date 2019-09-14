package com.bnuz.login.enums;

import lombok.Getter;

@Getter
public enum LoginEnum {

    SUCCESS(200,"成功"),
    USER_ERROR(300,"用户名或密码输入错误"),
    USER_NULL(301,"用户名或密码为空"),
    USER_NAME_ERROR(302,"用户名输入不正确"),
    USER_ID_ERROR(303,"身份证后六位不正确"),
    NON_LOGIN(400,"请登录后再做操作！");

    private Integer code;
    private String msg;

    LoginEnum(Integer code, String msg) {
        this.code = code;
        this.msg = msg;
    }
}
