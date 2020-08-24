package cn.appsys.service.lmpl;

import cn.appsys.dao.AppInfoMapper;
import cn.appsys.dao.LoginMapper;
import cn.appsys.pojo.App_info;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("appInfoService")
public class AppInfoServicelmpl implements cn.appsys.service.AppInfoService {
    @Autowired
    private AppInfoMapper mapper;

    @Override
    public List<App_info> getAppList(String softwareName, Integer APKName, Integer currentPageNo, Integer pageSize) {
        return mapper.getAppList(softwareName,APKName,(currentPageNo-1)*pageSize,pageSize);
    }

    @Override
    public int getTotalCount(String softwareName, Integer APKName) {
        return mapper.getTotalCount(softwareName,APKName);
    }

//根据条件查询出app列表

//    @Override
//    public List<App_info> getAppInfoList(String querySoftwareName, Integer queryStatus, Integer queryCategoryLevel1,
//                                         Integer queryCategoryLevel2, Integer queryCategoryLevel3, Integer queryFlatformId,
//                                         Integer devId, Integer currentPageNo, Integer pageSize) throws Exception {
//        return mapper.getAppInfoList(querySoftwareName,
//                queryStatus,
//                queryCategoryLevel1,
//                queryCategoryLevel2,
//                queryCategoryLevel3,
//                queryFlatformId,
//                devId,
//                (currentPageNo - 1) * pageSize,
//                pageSize);
//    }
//
//    @Override
//    public int getAppInfoCount(String querySoftwareName, Integer queryStatus, Integer queryCategoryLevel1,
//                               Integer queryCategoryLevel2, Integer queryCategoryLevel3, Integer queryFlatformId,
//                               Integer devId) throws Exception {
//        return mapper.getAppInfoCount(querySoftwareName, queryStatus,
//                queryCategoryLevel1,
//                queryCategoryLevel2,
//                queryCategoryLevel3,
//                queryFlatformId,
//                devId);
//    }


}
