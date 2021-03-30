package com.loveliness.layui.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * @author loveliness
 * @create 2021-03-30 18:44
 */

@Controller
public class IndexController {

    @Resource
    private HttpSession session;

    @RequestMapping("/")
    public String index() {
        String loginString = "login";
        if (session.getAttribute(loginString) != null) {
            return "index";
        } else {
            return "login";
        }
    }

    @RequestMapping("/index")
    public String index1() {
        return index();
    }

    @RequestMapping("/login")
    public String login() {
        return index();
    }


}
