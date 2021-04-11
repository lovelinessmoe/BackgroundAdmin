package com.loveliness.layui.demo.entity;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

/**
 * study_account
 *
 * @author
 */
@Data
public class StudyAccount implements Serializable {
    /**
     * 用户id
     */
    @JsonProperty(value = "uId")
    private Integer uId;

    /**
     * 用户微信名称
     */
    @JsonProperty(value = "uWeixinName")
    private String uWeixinName;

    /**
     * 用户名
     */
    @JsonProperty(value = "uName")
    private String uName;

    /**
     * 密码
     */
    @JsonProperty(value = "uPwd")
    private String uPwd;

    /**
     * 性别
     */
    @JsonProperty(value = "uSex")
    private String uSex;

    /**
     * 头像地址
     */
    @JsonProperty(value = "uAvatarUrl")
    private String uAvatarUrl;

    /**
     * 授权码
     */
    @JsonProperty(value = "uAuthCode")
    private String uAuthCode;

    /**
     * 用户等级
     */
    @JsonProperty(value = "uQbcId")
    private Integer uQbcId;

    /**
     * 学号
     */
    @JsonProperty(value = "stuNo")
    private String stuNo;

    /**
     * 学生唯一ID 时间戳
     */
    @JsonProperty(value = "stuId")
    private String stuId;

    /**
     * 联系电话
     */
    @JsonProperty(value = "uPhone")
    private String uPhone;

    /**
     * 工作单位
     */
    @JsonProperty(value = "uCompany")
    private String uCompany;

    /**
     * 学校
     */
    @JsonProperty(value = "uSchool")
    private String uSchool;

    /**
     * 学历
     */
    @JsonProperty(value = "uEducation")
    private String uEducation;

    /**
     * 微信唯一标识
     */
    @JsonProperty(value = "uWxopenid")
    private String uWxopenid;

    /**
     * 生成日期 时间戳
     */
    @JsonProperty(value = "uCreateTime")
    private Integer uCreateTime;

    /**
     * 更新日期 时间戳
     */
    @JsonProperty(value = "uUpdateTime")
    private Integer uUpdateTime;

    /**
     * 用户状态: 0-禁用 1-启用
     */
    @JsonProperty(value = "uStatus")
    private Byte uStatus;

    private static final long serialVersionUID = 1L;
}