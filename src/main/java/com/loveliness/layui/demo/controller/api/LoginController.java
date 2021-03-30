package com.loveliness.layui.demo.controller.api;

import cn.hutool.captcha.AbstractCaptcha;
import cn.hutool.captcha.CaptchaUtil;
import com.loveliness.layui.demo.entity.ResEntity;
import com.loveliness.layui.demo.entity.User;
import com.loveliness.layui.demo.service.UserService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;


/**
 * @author loveliness
 * @create 2021-03-28 15:58
 */

@CrossOrigin
@RestController
@RequestMapping("/api")

public class LoginController {

    @Resource
    private UserService userService;

    private AbstractCaptcha Captcha;


    @RequestMapping("/login")
    public ResEntity login(User user, String captcha) {
        System.out.println(user);
        System.out.println("captcha" + captcha);

        int login;
        String msg;
        String token = null;
//        if (Captcha.getCode().equals(captcha)) {
        if (Captcha.getCode().equals(captcha)) {
            login = userService.login(user);
            if (login != 1) {
                msg = "用户名或密码错误";
            } else {
                msg = "登陆成功";
//                token = SetToken();
            }
        } else {
            login = 0;
            msg = "验证码错误";
        }
        return new ResEntity(login, msg, 0, token);
    }


    @RequestMapping("/captcha")
    public String captcha() {
        Captcha = CaptchaUtil.createCircleCaptcha(90, 30);
        return Captcha.getImageBase64();
    }
}
