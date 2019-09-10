package com.bnuz.login.service;

import com.bnuz.login.entity.Record;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RecordService {
    int addRecord(Record record);

    List<Record> getRecordList();
}
