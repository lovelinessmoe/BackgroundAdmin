package com.loveliness.layui.demo.controller.api;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;
import com.loveliness.layui.demo.entity.vo.LayVO;
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

    /**
     * 获取用户
     * PageHaper分页
     *
     * @param page  页码
     * @param limit 限制每条个数
     * @return LayVO
     */
    @RequestMapping("/getAccount")
    public String getTable(String page, String limit) {
        PageInfo<StudyAccount> allAccount = studyService.getAllAccount(Integer.parseInt(page), Integer.parseInt(limit));
        LayVO layVO = new LayVO(0, "", (int) allAccount.getTotal(), allAccount.getList());
        List<StudyAccount> list = allAccount.getList();
        System.out.println("resEntityList:" + list);

        String s = JSON.toJSONString(layVO);

        System.out.println("s" + s);

        return s;
    }

    /**
     * 切换用户状态
     *
     * @param id   用户ID
     * @param stat 切换到的状态
     * @return LayVO
     */
    @RequestMapping("switch")
    public LayVO switchStatic(String id, String stat) {
        int i = studyService.switchState(id, stat);
        LayVO layVO = new LayVO(i, i > 0 ? "成功" : "失败", 0, null);
        return layVO;
    }

    /**
     * 修改用户信息
     *
     * @param data 前端传回的用户信息
     * @return LayVO
     */
    @RequestMapping("editStudyAccount")
    public LayVO editStudyAccount(@RequestBody StudyAccount data) {
        int rows = studyService.editStudyAccount(data);
        LayVO layVO = new LayVO(rows, rows > 0 ? "成功" : "失败", 0, studyService.getAccount(data.getUId()));
        return layVO;
    }

    /**
     * 删除用户
     *
     * @param id 传回用户ID
     * @return LayVO
     */
    @RequestMapping("deleteAccount")
    public LayVO deleteAccount(String id) {
        int rows = studyService.deleteAccount(id);
        LayVO layVO = new LayVO(rows, rows > 0 ? "成功" : "失败", 0, null);
        return layVO;
    }

    /**
     * 增加用户
     *
     * @param data 用户BEAN
     * @return LayVO
     */
    @RequestMapping("addAccount")
    public LayVO addAccount(@RequestBody StudyAccount data) {
        System.out.println(data);
        int rows = studyService.addAccount(data);
        LayVO layVO = new LayVO(rows, rows > 0 ? "成功" : "失败", 0, null);
        return layVO;
    }

}
