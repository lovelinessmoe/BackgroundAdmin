package com.loveliness.layui.demo.mapper;

import com.loveliness.layui.demo.entity.People;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

public interface PeopleDao {
    int deleteByPrimaryKey(Integer id);

    int insert(People record);

    int insertSelective(People record);

    People selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(People record);

    int updateByPrimaryKey(People record);

    List<People> getAllPeople();
}