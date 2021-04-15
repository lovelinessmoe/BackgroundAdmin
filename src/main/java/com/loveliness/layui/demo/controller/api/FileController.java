package com.loveliness.layui.demo.controller.api;

import com.loveliness.layui.demo.entity.vo.LayVO;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Value;
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
public class FileController {


    /**
     * 图片放回本地
     *
     * @param file 前端传回的文件
     * @return 文件路径
     */
    @Value("${UploadPath}")
    private String path;

    @SneakyThrows
    @ResponseBody
    private String photoUpload(MultipartFile file) {
        File file1 = new File(path + "Photo/" + file.getOriginalFilename());

        if (file1.createNewFile()) {
            //复制文件
            file.transferTo(file1);
            return "/Photo/" + file1.getName();
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
    public LayVO photo(MultipartFile file) {
        String path = photoUpload(file);

        if ("".equals(path)) {
            return null;
        } else {
            Map<String, String> data = new HashMap<>(16);
            data.put("src", path);

            LayVO layVO = new LayVO();
            layVO.setCode(0);
            layVO.setMsg(" ");
            layVO.setData(data);

            System.out.println("layVO" + layVO);
            return layVO;
        }
    }
}

