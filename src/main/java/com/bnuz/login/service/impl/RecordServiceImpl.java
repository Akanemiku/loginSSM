package com.bnuz.login.service.impl;

import com.bnuz.login.dao.RecordDao;
import com.bnuz.login.entity.Record;
import com.bnuz.login.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecordServiceImpl implements RecordService {
    @Autowired
    private RecordDao recordDao;

    public int addRecord(Record record) {
        return recordDao.insertRecord(record);
    }

    public List<Record> getRecordList(Integer userId) {
        return recordDao.findAll(userId);
    }

    public int deleteRecord(Record record) {
        return recordDao.deleteRecord(record);
    }
}
