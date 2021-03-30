package com.loveliness.layui.demo.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * User
 * @author 
 */
@Data
public class User implements Serializable {
    private Integer id;

    private String username;

    private String password;

    private static final long serialVersionUID = 1L;
}