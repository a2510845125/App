package cn.appsys.dao;

import cn.appsys.pojo.Backend_user;
import cn.appsys.pojo.Dev_user;
import org.apache.ibatis.annotations.Param;

public interface LoginMapper {
    //    开发者登录
    Dev_user Devlogin(@Param("devCode") String devCode,@Param("devPassword") String devPassword);
//    后台管理员登录
    Backend_user BackendLogin(@Param("userCode")String userCode, @Param("userPassword")String userPassword);

}
