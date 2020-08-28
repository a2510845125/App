package cn.appsys.service;

import cn.appsys.pojo.App_info;
import cn.appsys.pojo.Backend_user;
import cn.appsys.pojo.Dev_user;

import java.util.List;

public interface LoginService {
    //    开发者登录
    Dev_user Devlogin(String devCode, String devPassword);

    //    后台管理员登录
    Backend_user BackendLogin(String userCode, String userPassword);


}
