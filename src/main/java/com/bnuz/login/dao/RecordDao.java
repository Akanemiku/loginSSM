package com.bnuz.login.dao;

import com.bnuz.login.entity.Record;

import java.util.List;

public interface RecordDao {
    int insertRecord(Record record);

    List<Record> findAll(Integer userId);

    int deleteRecord(Record record);
}
