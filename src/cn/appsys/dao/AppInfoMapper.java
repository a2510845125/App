package cn.appsys.dao;

import cn.appsys.pojo.App_info;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AppInfoMapper {
// 根据条件获取用户信息
//    <!--根据条件获取用户信息的列表-->
    List<App_info> getAppList(@Param("softwareName")String softwareName,
                           @Param("APKName")Integer APKName,
                           @Param("from")Integer from,
                           @Param("pageSize")Integer pageSize);
    //分页
    int getTotalCount(@Param("softwareName") String softwareName, @Param("APKName") Integer APKName);

}
