package com.bnuz.login.dao;

import com.bnuz.login.BaseTest;
import com.bnuz.login.entity.Record;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class RecordDaoTest extends BaseTest {

    @Autowired
    private RecordDao recordDao;

    @Test
    public void insertRecord(){
        Record record = new Record();
        record.setUserId(2);
        recordDao.insertRecord(record);
    }

    @Test
    public void findAll(){
        PageHelper.startPage(1,5);
        List<Record> recordList = recordDao.findAll(2);
        PageInfo pageInfo = new PageInfo(recordList);
        System.out.println(pageInfo.getTotal());
    }

}