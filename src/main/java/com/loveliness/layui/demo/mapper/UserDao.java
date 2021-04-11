package com.loveliness.layui.demo.mapper;

import com.loveliness.layui.demo.entity.User;

public interface UserDao {

    User login(User user);

    int getCount();

}