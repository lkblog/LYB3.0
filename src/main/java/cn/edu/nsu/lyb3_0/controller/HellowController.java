package cn.edu.nsu.lyb3_0.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author 罗凯
 * @date 2021/9/7 16:04
 */
@RestController
public class HellowController {

    @RequestMapping("/hello")
    public String hello(){
        return "Hello,World";
    }


}
