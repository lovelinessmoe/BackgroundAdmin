package com.loveliness.layui.demo.entity.vo;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


/**
 * @author loveliness
 * @create 2021-03-23 15:10
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class LayVO {

    @JSONField(ordinal = 1)
    private Integer code;
    @JSONField(ordinal = 2)
    private String msg;
    @JSONField(ordinal = 3)
    private Integer count;
    @JSONField(ordinal = 4)
    private Object data;

}
