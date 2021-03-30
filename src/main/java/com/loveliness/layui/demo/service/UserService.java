package com.loveliness.layui.demo.service;

import cn.hutool.core.lang.UUID;
import com.loveliness.layui.demo.entity.User;
import com.loveliness.layui.demo.mapper.UserDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * @author loveliness
 * @create 2021-03-28 16:12
 */

@Service
public class UserService {

    @Resource
    private UserDao userDao;

    @Resource
    private HttpSession session;

    public int login(User user) {
        User login;
        login = userDao.login(user);
        if (login != null) {
            session.setAttribute("login", user);
            return 1;
        } else {
            return 0;
        }
    }
}
