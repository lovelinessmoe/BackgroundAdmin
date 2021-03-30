package com.loveliness.layui.demo.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * People
 * @author 
 */
@Data
public class People implements Serializable {
    /**
     * ID
     */
    private Integer id;

    /**
     *  用户名
     */
    private String username;

    /**
     * 性别
     */
    private String sex;

    /**
     * 城市
     */
    private String city;

    /**
     * 签名
     */
    private String sign;

    /**
     * 登陆次数
     */
    private Integer logins;

    /**
     * 积分
     */
    private Integer experience;

    /**
     * 评分
     */
    private Integer score;

    /**
     * 职业
     */
    private String classify;

    /**
     * 财富
     */
    private Integer wealth;

    private static final long serialVersionUID = 1L;
}