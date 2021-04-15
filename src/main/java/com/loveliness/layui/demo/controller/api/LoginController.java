package com.loveliness.layui.demo.controller.api;

import cn.hutool.captcha.AbstractCaptcha;
import cn.hutool.captcha.CaptchaUtil;
import com.loveliness.layui.demo.entity.vo.LayVO;
import com.loveliness.layui.demo.entity.User;
import com.loveliness.layui.demo.service.UserService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;


/**
 * 异步登陆API
 *
 * @author loveliness
 * @create 2021-03-28 15:58
 */

@CrossOrigin
@RestController
@RequestMapping("/api")

public class LoginController {

    @Resource
    private UserService userService;

    private AbstractCaptcha captchaCheck;

    /**
     * 登陆
     *
     * @param user    用户BEAN
     * @param captcha 验证码
     * @return LayVO
     */
    @RequestMapping("/login")
    public LayVO login(User user, String captcha) {
        /*
        int login;
        String msg;
        if (captchaCheck.getCode().equals(captcha)) {
            login = userService.login(user);
            if (login != 1) {
                msg = "用户名或密码错误";
            } else {
                msg = "登陆成功";
            }
        } else {
            login = 0;
            msg = "验证码错误";
        }
        return new LayVO(login, msg, 0, null);

        */

        User user1 = new User(null, "1", "1");
        int login1 = userService.login(user1);

        return new LayVO(login1, "haha", 0, null);
    }

    /**
     * 获取验证码
     *
     * @return IMG的Base64-
     */
    @RequestMapping("/captcha")
    public String captcha() {
        captchaCheck = CaptchaUtil.createCircleCaptcha(90, 30);
        return captchaCheck.getImageBase64();
    }
}
