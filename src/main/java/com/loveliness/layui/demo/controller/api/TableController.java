package com.loveliness.layui.demo.controller.api;

import com.github.pagehelper.PageInfo;
import com.loveliness.layui.demo.entity.People;
import com.loveliness.layui.demo.entity.vo.LayVO;
import com.loveliness.layui.demo.service.TableService;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;


/**
 * 用户表格
 *
 * @author loveliness
 * @create 2021-03-24 17:01
 */

@CrossOrigin
@RestController
@RequestMapping("/api")
public class TableController {

    @Resource
    private TableService tableService;

    @RequestMapping("/table")
    public LayVO getTable(String page, String limit) {
        PageInfo<People> allTable = tableService.getAllTable(Integer.parseInt(page), Integer.parseInt(limit));

        return new LayVO(0, "", (int) allTable.getTotal(), allTable.getList());
    }
}
