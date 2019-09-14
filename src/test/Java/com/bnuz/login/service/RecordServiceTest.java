package com.bnuz.login.service;

import com.bnuz.login.BaseTest;
import com.bnuz.login.dao.RecordDao;
import com.bnuz.login.entity.Record;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class RecordServiceTest extends BaseTest {

    @Autowired
    private RecordDao recordDao;

    @Test
    public void getRecordList(){
        PageHelper.startPage(1,5);
        List<Record> recordList = recordDao.findAll(1);
        PageInfo pageInfo = new PageInfo(recordList);
        System.out.println(pageInfo.toString());
    }

}