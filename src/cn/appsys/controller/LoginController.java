package cn.appsys.controller;

import cn.appsys.pojo.Backend_user;
import cn.appsys.pojo.Dev_user;
import cn.appsys.service.LoginService;
import cn.appsys.tools.Constants;
import com.alibaba.fastjson.JSON;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/login")
public class LoginController {
    @Resource
    private LoginService loginService;
//    管理页面
@RequestMapping("/zxzx.html")
public String Login(){
    return "Login";
}
//    开发者登录跳转
    @RequestMapping("/DevLogin.html")
    public String DevLogin(){
        return "DevLogin";
    }
    //    登录登录成功后跳转
    @RequestMapping("/Main.html")
    public String yesLogin(){
        return "main";
    }
    //    管理员用户登录跳转
    @RequestMapping("/asd.html")
    public String BackendLogin(){
        return "BackendLogin";
    }
//    开发者登录
    @RequestMapping(value = "/DevdoLogin.html")
    public String Devlogin(HttpSession session,HttpServletRequest request,  @RequestParam String devCode, @RequestParam String devPassword) {
//        调用相关业务
        Dev_user dev_user=loginService.Devlogin(devCode,devPassword);
//        根据结果 进行不同的跳转
        if (dev_user != null) {
//            说明用户登录成功
            System.out.println("开发者登录成功");
            session.setAttribute(Constants.USER_SESSION,dev_user);
            return "redirect:/login/Main.html";
//            request.getSession().setAttribute("dev_user",dev_user);
//            return "main";
        } else {
//            登录失败
//            System.out.println("开发者登录失败");
            request.setAttribute("error","用户名不正确");
            return "Login:";
        }

    }

//    管理员登录
@RequestMapping(value = "/BackendLogin.html")
    public String BackendLogin(HttpSession session,HttpServletRequest request,@RequestParam String userCode, @RequestParam String userPassword) {
//        调用相关业务
        Backend_user backend_user=loginService.BackendLogin(userCode,userPassword);
//        根据结果 进行不同的跳转
        if (backend_user != null) {
//            说明用户登录成功ChakanList
            System.out.println("管理员登录成功");
            session.setAttribute(Constants.USER_SESSION,backend_user);
            return "redirect:/login/Main.html";
        } else {
//            登录失败
            request.setAttribute("error","用户名不正确");
            return "Login:";
        }
    }

}
