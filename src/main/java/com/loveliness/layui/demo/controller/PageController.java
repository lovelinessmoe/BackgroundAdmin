package com.loveliness.layui.demo.controller;

import com.loveliness.layui.demo.entity.StudyAccount;
import com.loveliness.layui.demo.entity.User;
import com.loveliness.layui.demo.mapper.UserDao;
import com.loveliness.layui.demo.service.StudyService;
import com.loveliness.layui.demo.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * @author loveliness
 * @create 2021-03-30 19:06
 */
@Controller
@RequestMapping("/page")
public class PageController {

    @Resource
    private UserService userService;

    @Resource
    private StudyService studyService;


    @RequestMapping("/home")
    public String home(Model model) {
        //总用户数
        int count = userService.getCount();
        model.addAttribute("userCount", count);
        return "page/home";
    }

    @RequestMapping("/setting")
    public String setting() {
        return "page/setting";
    }

    @RequestMapping("/account")
    public String account() {
        return "page/account";
    }

    @RequestMapping("/table")
    public String table() {
        return "page/table";
    }

    @RequestMapping("/menu")
    public String menu() {
        return "page/menu";
    }

    @RequestMapping("/form")
    public String form() {
        return "page/form";
    }

    @RequestMapping("/form-step")
    public String formStep() {
        return "page/form-step";
    }

    @RequestMapping("/404")
    public String notFound() {
        return "page/404";
    }

    @RequestMapping("/button")
    public String button() {
        return "page/button";
    }

    @RequestMapping("/layer")
    public String layer() {
        return "page/layer";
    }

    @RequestMapping("/icon")
    public String icon() {
        return "page/icon";
    }

    @RequestMapping("/icon-picker")
    public String iconPicker() {
        return "page/icon-picker";
    }

    @RequestMapping("/color-select")
    public String colorSelect() {
        return "page/color-select";
    }

    @RequestMapping("/table-select")
    public String tableSelect() {
        return "page/table-select";
    }

    @RequestMapping("/upload")
    public String upload() {
        return "page/upload";
    }

    @RequestMapping("/editor")
    public String editor() {
        return "page/editor";
    }

    @RequestMapping("/area")
    public String area() {
        return "page/area";
    }

    @RequestMapping("/error")
    public String error() {
        return "page/error";
    }

    @RequestMapping("/table/add")
    public String add() {
        return "page/table/add";
    }

    @RequestMapping("/table/edit")
    public String edit() {
        return "page/table/edit";
    }


    @RequestMapping("/table/edit/{uId}")
    public String editAccount(Model model, @PathVariable("uId") Integer uId) {

        StudyAccount studyAccount = studyService.editAccountIndex(uId);
        System.out.println("studyAccount:"+studyAccount);
        model.addAttribute("user", studyAccount);
        return "page/table/edit";
    }
}
