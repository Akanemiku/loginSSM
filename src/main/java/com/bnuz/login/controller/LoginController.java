package com.bnuz.login.controller;

import com.bnuz.login.entity.Record;
import com.bnuz.login.entity.User;
import com.bnuz.login.service.RecordService;
import com.bnuz.login.service.UserService;
import com.bnuz.login.utils.KeyUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    @Autowired
    private RecordService recordService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("name") String name,
                        @RequestParam("password") String password,
                        @RequestParam(value = "page", defaultValue = "1") Integer page,
                        @RequestParam(value = "size", defaultValue = "5") Integer size,
                        Map<String, Object> map,
                        HttpServletRequest request) {
        User user = userService.getUser(name);
        if (name != null && password != null) {
            if (userService.isLogin(name, password)) {
                Record record = new Record();
                record.setUserId(user.getUserId());
                recordService.addRecord(record);
                return getList(page, size, map, request);
            } else {
                map.put("msg", "用户名或密码输入错误!");
                map.put("url", "index.jsp");
                return "error";
            }
        } else {
            map.put("msg", "用户名或密码为空!");
            map.put("url", "index.jsp");
            return "error";
        }
    }

//    @RequestMapping(value = "/getlist",method = RequestMethod.GET)
//    @ResponseBody
//    public Map<String, Object> getList(HttpServletRequest request){
//        Map<String, Object> modelMap = new HashMap<String, Object>();
//        List<Record> recordList = recordService.getRecordList(0,5);
//        modelMap.put("recordList",recordList);
//        modelMap.put("success",true);
//        return modelMap;
//    }

    @RequestMapping(value = "/success", method = RequestMethod.GET)
    public String success(@RequestParam(value = "page", defaultValue = "1") Integer page,
                          @RequestParam(value = "size", defaultValue = "5") Integer size,
                          Map<String, Object> map,
                          HttpServletRequest request) {
        return getList(page, size, map, request);
    }

    private String getList(@RequestParam(value = "page", defaultValue = "1") Integer page,
                           @RequestParam(value = "size", defaultValue = "5") Integer size,
                           Map<String, Object> map,
                           HttpServletRequest request) {
        PageHelper.startPage(page, size);
        List<Record> recordList = recordService.getRecordList();
        PageInfo pageInfo = new PageInfo(recordList);
        int num = (int) Math.ceil(pageInfo.getTotal() * 1.0 / size);

        map.put("recordList", recordList);
        map.put("page", page);
        map.put("size", size);
        map.put("totalNum", num);
        request.setAttribute("map", map);
        return "success";
    }

    @RequestMapping(value = "/modify", method = RequestMethod.GET)
    public String modifyPsw(@RequestParam("name") String name, @RequestParam("new") String password, @RequestParam("idcard") String idcard, Map<String, Object> map) {
        User user = userService.getUser(name);
        if(user==null){
            map.put("msg", "用户名输入不正确");
            map.put("url", "index.jsp");
            return "error";
        }
        if (!idcard.equals(user.getIdcard())) {
            map.put("msg", "身份证后六位不正确");
            map.put("url", "index.jsp");
            return "error";
        } else {
            try {
                password = KeyUtils.sha1(password);
            } catch (NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
            user.setPassword(password);
            userService.modifyPassword(user);
            return "../../index";
        }
    }

}
