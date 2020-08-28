package cn.appsys.service.lmpl;

import cn.appsys.dao.AppInfoMapper;
import cn.appsys.dao.LoginMapper;
import cn.appsys.pojo.App_info;


import cn.appsys.pojo.App_version;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("appInfoService")
public class AppInfoServicelmpl implements cn.appsys.service.AppInfoService {
    @Autowired
    private AppInfoMapper mapper;

    @Override
    public List<App_info> getAppList(String softwareName, String APKName, Integer currentPageNo, Integer pageSize) {
        return mapper.getAppList(softwareName, APKName, (currentPageNo - 1) * pageSize, pageSize);
    }

    @Override
    public int getTotalCount(String softwareName, String APKName) {
        return mapper.getTotalCount(softwareName, APKName);
    }

    //    ===========================================添加
    @Override
    public boolean add(App_info app_info) {
        if (mapper.addAPP(app_info) > 0) {
            return true;
        } else {
            return false;
        }
    }

    //根据id删除
    @Override
    public boolean getdelete(Integer id) {
        return mapper.getdelete(id);
    }

    //根据id查看详情
    @Override
    public App_info ChakanList(Integer id) {
        return mapper.ChakanList(id);
    }

    //根据id查看版本信息
    @Override
    public List<App_version> ChakanBanben(Integer appId) {
        return mapper.ChakanBanben(appId);
    }

    //修改上架为下架操作
    @Override
    public App_info getShangJiaById(Integer id) {
        return mapper.getShangJiaById(id);
    }

    //修改 下架 为 上架操作
    @Override
    public App_info getXiaJiaById(Integer id) {
        return mapper.getXiaJiaById(id);
    }

    //根据id修改信息
    @Override
    public boolean modifyById(App_info app_info) {
        if (mapper.modifyById(app_info) > 0) {
            return true;
        } else {
            return false;
        }
    }
    //    根据id新增版本
    @Override
    public boolean addByid(App_version app_version) {
        if (mapper.addByid(app_version) > 0) {
            return true;
        } else {
            return false;
        }
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
