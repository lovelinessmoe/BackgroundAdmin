package com.loveliness.layui.demo.controller.api;

import com.loveliness.layui.demo.entity.ResEntity;
import lombok.SneakyThrows;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

/**
 * @author loveliness
 * @create 2021-03-23 11:22
 */
@Controller
@RequestMapping("/api")
public class FIleController {


    /**
     * 图片放回本地
     *
     * @param file 前端传回的文件
     * @return 文件路径
     */
    @SneakyThrows
    @ResponseBody
    private String photoUpload(MultipartFile file) {
        String path = "/Users/loveliness/Desktop/Photo/";
        File file1 = new File(path + file.getOriginalFilename());

        if (file1.createNewFile()) {
            //复制文件
            file.transferTo(file1);
            return file1.getAbsolutePath();
        } else {
            return "";
        }
    }


    /**
     * 单文件上传
     *
     * @param file 前端传回的文件
     * @return JSON
     */

    @ResponseBody
    @RequestMapping("/photo")
    public ResEntity photo(MultipartFile file) {
        String path = photoUpload(file);

        if ("".equals(path)) {
            return null;
        } else {
            Map<String, String> data = new HashMap<>(16);
            data.put("src", path);

            ResEntity resEntity = new ResEntity();
            resEntity.setCode(1);
            resEntity.setMsg(" ");
            resEntity.setData(data);

//            String s = JSON.toJSONString(resEntity);
            return resEntity;
        }
    }
}

