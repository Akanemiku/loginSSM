package com.bnuz.login;

import com.bnuz.login.utils.KeyUtils;
import org.junit.Test;

import java.security.NoSuchAlgorithmException;

public class test {
    @Test
    public void a(){
        int num = (int) Math.ceil(24*1.0 / 5);
        System.out.println(num);
    }

    @Test
    public void b() throws NoSuchAlgorithmException {
        String num="123456";
        String num2 = KeyUtils.sha1(num);
        System.out.println(num2);
        num2 = KeyUtils.sha1(num);
        System.out.println(num2);
    }
}
