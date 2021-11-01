package cn.edu.nsu.lyb3_0.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Arrays;

/**
 * @author 罗凯
 * @date 2021/9/14 14:22
 */
@Controller
public class IndexController {

    @RequestMapping("/index")
    public String index(Model model){
        model.addAttribute("msg","首页");
        model.addAttribute("users", Arrays.asList("Test","Test2"));
        return "index";
    }

    @RequestMapping("/login")
    public String login(){
        return "login";
    }
}
