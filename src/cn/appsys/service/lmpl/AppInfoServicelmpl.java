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
    public List<App_info> getAppList(String softwareName,
                                     String APKName,
                                     Integer flatformId,
                                     Integer categoryLevel1,
                                     Integer categoryLevel2,
                                     Integer categoryLevel3,
                                     Integer modifyBy,
                                     Integer currentPageNo,
                                     Integer pageSize) {
        return mapper.getAppList(softwareName, APKName, flatformId,categoryLevel1,categoryLevel2,categoryLevel3,modifyBy, (currentPageNo - 1) * pageSize, pageSize);
    }

    @Override
    public int getTotalCount(String softwareName,
                             String APKName,
                             Integer flatformId,
                             Integer categoryLevel1,
                             Integer categoryLevel2,
                             Integer categoryLevel3,
                             Integer modifyBy) {
        return mapper.getTotalCount(softwareName, APKName, flatformId,categoryLevel1,categoryLevel2,categoryLevel3,modifyBy);
    }
//超级管理员
@Override
public List<App_info> getAppList2(String softwareName, String APKName, Integer flatformId,Integer categoryLevel1,Integer categoryLevel2,Integer categoryLevel3, Integer currentPageNo, Integer pageSize) {
    return mapper.getAppList2(softwareName, APKName, flatformId,categoryLevel1,categoryLevel2,categoryLevel3, (currentPageNo - 1) * pageSize, pageSize);
}

    @Override
    public int getTotalCount2(String softwareName, String APKName, Integer flatformId,Integer categoryLevel1,Integer categoryLevel2,Integer categoryLevel3 ) {
        return mapper.getTotalCount2(softwareName, APKName, flatformId,categoryLevel1,categoryLevel2,categoryLevel3);
    }

    //    ===========================================添加
//    @Override
//    public boolean add(App_info app_info) {
//        if (mapper.addAPP(app_info) > 0) {
//            return true;
//        } else {
//            return false;
//        }
//    }
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
    public App_version ChakanBanben2(Integer appId) {
        return mapper.ChakanBanben2(appId);
    }

    //修改上架为下架操作
    @Override
    public boolean getShangJiaById(Integer id) {
        if (mapper.getShangJiaById(id) > 0) {
            return true;
        } else {
            return false;
        }
    }

    //修改 下架 为 上架操作
    @Override
    public boolean getXiaJiaById(Integer id) {
        if (mapper.getXiaJiaById(id) > 0) {
            return true;
        } else {
            return false;
        }
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

    //    在增加id的方法中查询id 然后调用修改
    @Override
    public App_version Cha(Integer appId) {
        return mapper.Cha(appId);
    }
//修改
    @Override
    public boolean Cha2(App_info app_info) {
        if (mapper.Cha2(app_info) > 0) {
            return true;
        } else {
            return false;
        }
    }

    //    根据id修改-修改版本
    @Override
    public boolean xiugaiByid(App_info app_info) throws Exception {
        if (mapper.modifyById(app_info) > 0) {
            return true;
        } else {
            return false;
        }
    }
//审核通过
    @Override
    public boolean tongguo(App_info app_info) {
        if (mapper.tongguo(app_info) > 0) {
            return true;
        } else {
            return false;
        }
    }
//审核不通过
    @Override
    public boolean butongguo(App_info app_info) {
        if (mapper.butongguo(app_info) > 0) {
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
//审核通过

}
