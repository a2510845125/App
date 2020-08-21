package cn.appsys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {

//    普通用户登录跳转
    @RequestMapping("/Login_one.html")
    public String login_one(){
        return "Login_one";
    }
    //    管理员用户登录跳转
    @RequestMapping("/Login_two.html")
    public String login_two(){
        return "Login_two";
    }
}
