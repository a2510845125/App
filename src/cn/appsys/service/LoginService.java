package cn.appsys.service;

import cn.appsys.pojo.Dev_user;

public interface LoginService {
    //    开发者登录
    Dev_user login(String devCode, String devPassword);
//    后台管理员登录
}
