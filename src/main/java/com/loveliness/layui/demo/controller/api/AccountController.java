package com.loveliness.layui.demo.controller.api;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;
import com.loveliness.layui.demo.entity.ResEntity;
import com.loveliness.layui.demo.entity.StudyAccount;
import com.loveliness.layui.demo.service.StudyService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author loveliness
 * @create 2021-04-01 19:27
 */
@CrossOrigin
@RestController
@RequestMapping("/api")
public class AccountController {

    @Resource
    private StudyService studyService;

    @RequestMapping("/getAccount")
    public String getTable(String page, String limit) {
        PageInfo<StudyAccount> allAccount = studyService.getAllAccount(Integer.parseInt(page), Integer.parseInt(limit));

        ResEntity resEntity = new ResEntity(0, "", (int) allAccount.getTotal(), allAccount.getList());
        List<StudyAccount> list = allAccount.getList();
        System.out.println("resEntityList:" + list);

        String s = JSON.toJSONString(resEntity);

        System.out.println("s" + s);

        return s;
    }


    @RequestMapping("switch")
    public ResEntity switchStatic(String id, String stat) {
        int i = studyService.switchState(id, stat);
        ResEntity resEntity = new ResEntity(i, i > 0 ? "成功" : "失败", 0, null);
        return resEntity;
    }

    @RequestMapping("editStudyAccount")
    public ResEntity editStudyAccount(@RequestBody StudyAccount data) {
        int rows = studyService.editStudyAccount(data);
        ResEntity resEntity = new ResEntity(rows, rows > 0 ? "成功" : "失败", 0, studyService.getAccount(data.getUId()));
        return resEntity;
    }

    @RequestMapping("deleteAccount")
    public ResEntity deleteAccount(String id) {
        int rows = studyService.deleteAccount(id);
        ResEntity resEntity = new ResEntity(rows, rows > 0 ? "成功" : "失败", 0, null);
        return resEntity;
    }

    @RequestMapping("addAccount")
    public ResEntity addAccount(@RequestBody StudyAccount data) {
        System.out.println(data);
        int rows = studyService.addAccount(data);
        ResEntity resEntity = new ResEntity(rows, rows > 0 ? "成功" : "失败", 0, null);
        return resEntity;
    }

}
