package com.bnuz.login.dao;

import com.bnuz.login.entity.Record;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RecordDao {
    int insertRecord(Record record);

    List<Record> findAll(Integer userId);
}
