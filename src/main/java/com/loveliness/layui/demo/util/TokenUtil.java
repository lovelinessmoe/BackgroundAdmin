package com.loveliness.layui.demo.util;

import cn.hutool.core.lang.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * @author loveliness
 * @create 2021-03-29 21:02
 */
public class TokenUtil {

    @Resource
    private static HttpSession session;


    public static final String SetToken() {
        UUID uuid = UUID.randomUUID();
        session.setAttribute("token", uuid.toString());
        return uuid.toString();
    }
}
