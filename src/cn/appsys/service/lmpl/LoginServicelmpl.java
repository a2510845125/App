package cn.appsys.service.lmpl;

import cn.appsys.dao.LoginMapper;
import cn.appsys.pojo.Backend_user;
import cn.appsys.pojo.Dev_user;
import cn.appsys.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("loginService")
public class LoginServicelmpl implements LoginService {
    @Autowired
    private LoginMapper loginMapper;
//    开发人员的登录
    @Override
    public Dev_user Devlogin(String devCode, String devPassword) {
        return loginMapper.Devlogin(devCode,devPassword);
    }
//后台管理员登录
    @Override
    public Backend_user BackendLogin(String userCode, String userPassword) {
        return loginMapper.BackendLogin(userCode,userPassword);
    }
}
