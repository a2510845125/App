package cn.appsys.service;

import cn.appsys.pojo.App_info;


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

    List<App_info> getAppList(String softwareName,Integer APKName,Integer currentPageNo,Integer pageSize);
    //根据用户名和条数查询总条数
    int getTotalCount(String softwareName,Integer APKName);

}
