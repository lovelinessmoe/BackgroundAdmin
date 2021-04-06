package com.loveliness.layui.demo.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.loveliness.layui.demo.entity.StudyAccount;
import com.loveliness.layui.demo.mapper.StudyAccountDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author loveliness
 * @create 2021-04-01 19:32
 */

@Service
public class StudyService {

    @Resource
    private StudyAccountDao studyAccountDao;

    public PageInfo<StudyAccount> getAllAccount(int page, int limit) {
        PageHelper.startPage(page,limit);

        List<StudyAccount> allAccount = studyAccountDao.getAllAccount();

        System.out.println("allAccount:"+allAccount);
        PageInfo<StudyAccount> pageinfo = new PageInfo<StudyAccount>(allAccount);

        return pageinfo;
    }

    public int switchState(String id, String stat) {
        return studyAccountDao.modifyStat(id, stat);
    }
}
