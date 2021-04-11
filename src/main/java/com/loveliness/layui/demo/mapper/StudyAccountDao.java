package com.loveliness.layui.demo.mapper;

import com.loveliness.layui.demo.entity.StudyAccount;

import java.util.List;

public interface StudyAccountDao {

    List<StudyAccount> getAllAccount();

    int modifyStat(String id, String stat);

    StudyAccount getAccount(Integer uId);

    int editStudyAccount(StudyAccount data);

    int deleteAccount(String id);

    int addAccount(StudyAccount data);
}