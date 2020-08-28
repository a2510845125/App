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

    List<App_info> getAppList(String softwareName, String APKName, Integer currentPageNo, Integer pageSize);

    //根据用户名和条数查询总条数
    int getTotalCount(String softwareName, String APKName);


    //    ----------------------------------------添加
    boolean add(App_info app_info);

    //            ===============================根据id删除记录
    boolean getdelete(Integer id);

    //    根据id查看详情
    App_info ChakanList(@Param("id") Integer id);

    //   根据id查看版本信息
    List<App_version> ChakanBanben(@Param("appId") Integer appId);

    //   修改上架 为 下架 操作
    App_info getShangJiaById(@Param("id") Integer id);

    //    修改 下架 为 上架
    App_info getXiaJiaById(@Param("id") Integer id);

    //    根据id修改信息
    boolean modifyById(App_info app_info);

    //    根据id新增版本
    boolean addByid(App_version app_version);
}
