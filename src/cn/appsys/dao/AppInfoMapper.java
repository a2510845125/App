package cn.appsys.dao;

import cn.appsys.pojo.App_info;
import cn.appsys.pojo.App_version;
import cn.appsys.pojo.Dev_user;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AppInfoMapper {
    // 根据条件获取用户信息
//    <!--根据条件获取用户信息的列表-->
    List<App_info> getAppList(@Param("softwareName") String softwareName,
                              @Param("APKName") String APKName,
                              @Param("flatformId") Integer flatformId,
                              @Param("categoryLevel1") Integer categoryLevel1,
                              @Param("categoryLevel2") Integer categoryLevel2,
                              @Param("categoryLevel3") Integer categoryLevel3,
                              @Param("from") Integer from,
                              @Param("pageSize") Integer pageSize);

    //分页
    int getTotalCount(
            @Param("softwareName") String softwareName,
            @Param("APKName") String APKName,
            @Param("flatformId") Integer flatformId,
            @Param("categoryLevel1") Integer categoryLevel1,
            @Param("categoryLevel2") Integer categoryLevel2,
            @Param("categoryLevel3") Integer categoryLevel3

    );


    //    ----------------------------------------------添加1
    int addAPP(App_info app_info);

    //            根据id删除APP
    boolean getdelete(Integer id);

    //        根据id查看信息
    App_info ChakanList(@Param("id") Integer id);

    //   根据id查看版本信息
    List<App_version> ChakanBanben(@Param("appId") Integer appId);

    //   修改上架 为 下架 操作
    int getShangJiaById(@Param("id") Integer id);

    //    修改 下架 为 上架
    int getXiaJiaById(@Param("id") Integer id);

    //    根据id用户修改
    int modifyById(App_info app_info);

    //    根据id新增版本
    int addByid(App_version app_version);

    //    在增加id的方法中查询id 然后调用修改
    App_version Cha(@Param("appId") Integer appId);
//    修改
    int Cha2(App_info app_info);
    //    根据id修改-修改版本
    int xiugaiByid(App_info app_info);
}


//    select a.id, a.softwareName,a.APKName,a.supportROM,a.softwareSize,a.devId,a.interfaceLanguage,a.appInfo,
//        (select devName from dev_user where id = a.devId) as devName,
//        a.status,
//        (select valueName from data_dictionary d where  a.status=d.valueId AND d.typeCode='APP_STATUS') as statusName,
//        a.flatformId,
//        (select valueName from data_dictionary d where  a.flatformId=d.valueId AND d.typeCode='APP_FLATFORM') as flatformName,
//        a.categoryLevel1,
//        (select categoryName from app_category c where  c.id=a.categoryLevel1) as categoryLevel1Name,
//        a.categoryLevel2,
//        (select categoryName from app_category c where  c.id=a.categoryLevel2) as categoryLevel2Name,
//        a.categoryLevel3,
//        (select categoryName from app_category c where  c.id=a.categoryLevel3) as categoryLevel3Name,
//        a.downloads,
//        a.onSaleDate,
//        a.versionId,
//        (select v.versionNo from app_version v where v.id=a.versionId ) as versionNo
//        from  app_info a