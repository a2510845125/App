package cn.appsys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

//拦截器的验证我那个效果
@Controller
@RequestMapping("/interceptor")
public class MyController {
    //    处理请求的方法
    @RequestMapping("/sayHello.do")
    public String sayHello() {
        System.out.println("sayHello执行了");
        return "success";
    }
}
