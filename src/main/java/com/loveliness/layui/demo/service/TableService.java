package com.loveliness.layui.demo.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.loveliness.layui.demo.entity.People;
import com.loveliness.layui.demo.mapper.PeopleDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author loveliness
 * @create 2021-03-24 17:23
 */

@Service
public class TableService {


    @Resource
    private PeopleDao peopleDao;

    public PageInfo<People> getAllTable(int page, int limit) {
        PageHelper.startPage(page,limit);

        List<People> allPeople = peopleDao.getAllPeople();
        PageInfo<People> pageinfo = new PageInfo<People>(allPeople);

        System.out.println("allPeople"+allPeople);

        return pageinfo;
    }
}
