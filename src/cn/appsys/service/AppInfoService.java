package cn.appsys.service;

import cn.appsys.pojo.App_info;


import cn.appsys.pojo.App_version;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AppInfoService {
    // 根据条件获取用户信息
//    public List<App_info> getAppInfoList(@Param(value = "softwareName") String querySoftwareName,
//                                         @Param(value = "status") Integer queryStatus,
//                                         @Param(value = "categoryLevel1") Integer queryCategoryLevel1,
//                                         @Param(value = "categoryLevel2") Integer queryCategoryLevel2,
//                                         @Param(value = "categoryLevel3") Integer queryCategoryLevel3,
//                                         @Param(value = "flatformId") Integer queryFlatformId,
//                                         @Param(value = "devId") Integer devId,
//                                         @Param(value = "from") Integer currentPageNo,
//                                         @Param(value = "pageSize") Integer pageSize)throws Exception;
//
//    public int getAppInfoCount(@Param(value = "softwareName") String querySoftwareName,
//                               @Param(value = "status") Integer queryStatus,
//                               @Param(value = "categoryLevel1") Integer queryCategoryLevel1,
//                               @Param(value = "categoryLevel2") Integer queryCategoryLevel2,
//                               @Param(value = "categoryLevel3") Integer queryCategoryLevel3,
//                               @Param(value = "flatformId") Integer queryFlatformId,
//                               @Param(value = "devId") Integer devId)throws Exception;

    List<App_info> getAppList(String softwareName,
                              String APKName,
                              Integer flatformId,
                              Integer categoryLevel1,
                              Integer categoryLevel2,
                              Integer categoryLevel3,
                              Integer modifyBy,
                              Integer currentPageNo,
                              Integer pageSize);

    //根据用户名和条数查询总条数
    int getTotalCount(String softwareName,
                      String APKName,
                      Integer flatformId,
                      Integer categoryLevel1,
                      Integer categoryLevel2,
                      Integer categoryLevel3,
                      Integer modifyBy);
//超级管理员
List<App_info> getAppList2(String softwareName,
                          String APKName,
                          Integer flatformId,
                          Integer categoryLevel1,
                          Integer categoryLevel2,
                          Integer categoryLevel3,
                          Integer currentPageNo,
                          Integer pageSize);

    //根据用户名和条数查询总条数
    int getTotalCount2(String softwareName, String APKName,Integer flatformId,Integer categoryLevel1,Integer categoryLevel2,Integer categoryLevel3);


    //    ----------------------------------------添加
//    boolean add(App_info app_info);
    boolean add(App_info app_info) ;

    //            ===============================根据id删除记录
    boolean getdelete(Integer id);

    //    根据id查看详情
    App_info ChakanList(@Param("id") Integer id);

    //   根据id查看版本信息
    List<App_version> ChakanBanben(@Param("appId") Integer appId);
   App_version ChakanBanben2(@Param("appId") Integer appId);

    //   修改上架 为 下架 操作
    boolean getShangJiaById(@Param("id") Integer id);

    //    修改 下架 为 上架
    boolean getXiaJiaById(@Param("id") Integer id);

    //    根据id修改信息
    boolean modifyById(App_info app_info);

    //    根据id新增版本
    boolean addByid(App_version app_version);

    //    在增加id的方法中查询id 然后调用修改
    App_version Cha(@Param("appId") Integer appId);
    //    修改
    boolean Cha2(App_info app_info);

    //    根据id修改-修改版本
     boolean xiugaiByid(App_info app_info)throws Exception;
//     审核通过
boolean tongguo(App_info app_info);
//审核不通过
boolean butongguo(App_info app_info);

}
