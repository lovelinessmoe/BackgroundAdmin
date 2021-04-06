package com.loveliness.layui.demo.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * study_account
 * @author 
 */
@Data
public class StudyAccount implements Serializable {
    /**
     * 用户id
     */
    private Integer uId;

    /**
     * 用户微信名称
     */
    private String uWeixinName;

    /**
     * 用户名
     */
    private String uName;

    /**
     * 密码
     */
    private String uPwd;

    /**
     * 性别
     */
    private String uSex;

    /**
     * 头像地址
     */
    private String uAvatarUrl;

    /**
     * 授权码
     */
    private String uAuthCode;

    /**
     * 用户等级
     */
    private Integer uQbcId;

    /**
     * 学号
     */
    private String stuNo;

    /**
     * 学生唯一ID 时间戳
     */
    private String stuId;

    /**
     * 联系电话
     */
    private String uPhone;

    /**
     * 工作单位
     */
    private String uCompany;

    /**
     * 学校
     */
    private String uSchool;

    /**
     * 学历 
     */
    private String uEducation;

    /**
     * 微信唯一标识
     */
    private String uWxopenid;

    /**
     * 生成日期 时间戳
     */
    private Integer uCreateTime;

    /**
     * 更新日期 时间戳
     */
    private Integer uUpdateTime;

    /**
     * 用户状态: 0-禁用 1-启用
     */
    private Byte uStatus;

    private static final long serialVersionUID = 1L;
}