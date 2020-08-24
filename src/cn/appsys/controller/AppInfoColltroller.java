package cn.appsys.controller;

import cn.appsys.dao.AppInfoMapper;
import cn.appsys.pojo.App_category;
import cn.appsys.pojo.App_info;
import cn.appsys.pojo.Data_dictionary;
import cn.appsys.pojo.Dev_user;
import cn.appsys.service.AppInfoService;
import cn.appsys.service.LoginService;
import cn.appsys.tools.Constants;
import cn.appsys.tools.PageSupport;
import org.apache.log4j.Logger;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value = "/dev/flatform/app")
public class AppInfoColltroller {
//    //    引入所依赖的注解和类
//    @Resource
//    private AppInfoService appInfoService;
//    //    引入Log日志
//    private Logger logger = Logger.getLogger(AppInfoColltroller.class);
//
//    @RequestMapping(value = "/list")
////    mode1 封装后台数据 返回给前台 HttpSession：根据当前登录人的id 查看信息  要查询的软件的名称
////    参数不是必须的 所以 required = false
////    软件的名称 querySoftwareName
////    软件的状态 queryStatus
////
//    public String getAppInfoList(Model model, HttpSession session,
//                                 @RequestParam(value = "querySoftwareName", required = false) String querySoftwareName,
//                                 @RequestParam(value = "queryStatus", required = false) String _queryStatus,
//                                 @RequestParam(value = "querycategoryLevel1", required = false) String _querycategoryLevel1,
//                                 @RequestParam(value = "querycategoryLevel2", required = false) String _querycategoryLevel2,
//                                 @RequestParam(value = "querycategoryLevel3", required = false) String _querycategoryLevel3,
//                                 @RequestParam(value = "queryflatformId", required = false) String _queryflatformId,
//                                 @RequestParam(value = "pageIndex", required = false) String pageIndex) {
////        输出日志信息 方便后期检查数据
//        logger.info("getAppInfoList方法---->_querySoftwareName:传入的参数是" + querySoftwareName);
//        logger.info("getAppInfoList方法---->_queryStatus:传入的参数是" + _queryStatus);
//        logger.info("getAppInfoList方法---->_querycategoryLevel1:传入的参数是" + _querycategoryLevel1);
//        logger.info("getAppInfoList方法---->_querycategoryLevel2:传入的参数是" + _querycategoryLevel2);
//        logger.info("getAppInfoList方法---->_querycategoryLevel3:传入的参数是" + _querycategoryLevel3);
//        logger.info("getAppInfoList方法---->_queryflatformId:传入的参数是" + _queryflatformId);
//        logger.info("getAppInfoList方法---->pageIndex:传入的参数是" + pageIndex);
//
//        //获取当前人的应用信息
////        因为之前 开发者 登录后后就会把数据传入到session中，所以session.当前用户的id
////        Dev_user方法，调用Dev_user的getid方法获取当前用户的id
//        Integer devId = ((Dev_user) session.getAttribute(Constants.USER_SESSION)).getId();
////        定义一个变量 为了往前台的列表里传输数据
//        List<App_info> app_infoList = null;
////        App状态的下拉列表的取值
//
//        List<Data_dictionary> statusList = null;//下拉列表的状态的值
//
//        List<Data_dictionary> flatFormList = null;//app平台的下拉列表的取值
//
//        //列出一级分类列表：注，二级和三级分类类别通过ajax异步获取
////        调用Service的方法返回列表的值
//        List<App_category> categoryLevel1List = null;//App的下拉列表1
////        通过ajax异步的方式 根据Level1的数据动态的返回Level2的数据
//        List<App_category> categoryLeve21List = null;//App的下拉列表2
////        通过ajax异步的方式 根据Level2的数据动态的返回Level3的数据
//        List<App_category> categoryLeve31List = null;//App的下拉列表3
//
//        //页面容量
//        int pageSize = Constants.pageSize;
//        //当前页码
//        Integer currentPageNo = 1;
////        当前台传输的数据 pageIndex 不等于空
//        if (pageIndex != null) {
//            try {
////                将pageIndex的值 赋值给currentPageNo
//                currentPageNo = Integer.valueOf(pageIndex);
//            } catch (NumberFormatException e) {
//                e.printStackTrace();
//            }
//
//        }
////        调用service的方法 查询书appInfoList
////        service 的 getList的参数 有一部分是Inter类型的 所以需要进行数据转换
////        类型转换
//
//        Integer queryStatus = null;
////        如果传入进来的_queryStatus 不等空也不等于空字符串 _queryStatus=queryStatus
//        if (_queryStatus != null && !("").equals(_queryStatus)) {
//            queryStatus = Integer.parseInt(_queryStatus);
//        }
//
//        Integer queryCategoryLevel1 = null;
//        if (_querycategoryLevel1 != null && !("").equals(_querycategoryLevel1)) {
//            queryCategoryLevel1 = Integer.parseInt(_querycategoryLevel1);
//        }
//
//        Integer queryCategoryLevel2 = null;
//        if (_querycategoryLevel2 != null && !("").equals(_querycategoryLevel2)) {
//            queryCategoryLevel2 = Integer.parseInt(_querycategoryLevel2);
//        }
//
//        Integer queryCategoryLevel3 = null;
//        if (_querycategoryLevel3 != null && !("").equals(_querycategoryLevel3)) {
//            queryCategoryLevel3 = Integer.parseInt(_querycategoryLevel3);
//        }
//
//        Integer queryFlatformId = null;
//        if (_queryflatformId != null && !("").equals(_queryflatformId)) {
//            queryFlatformId = Integer.parseInt(_queryflatformId);
//        }
//        // 页面 总数量（列表记录数的总容量） 可能会报异常
//        int totalCount = 0;
//        try {
//            totalCount = appInfoService.getAppInfoCount(
//                    querySoftwareName,
//                    queryStatus,
//                    queryCategoryLevel1,
//                    queryCategoryLevel2,
//                    queryCategoryLevel3,
//                    queryFlatformId,devId);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
////        引入分页工具类
//        PageSupport pages = new PageSupport();
//        pages.setCurrentPageNo(currentPageNo);
//        pages.setPageSize(pageSize);
//        pages.setTotalCount(totalCount);
//        int totalPageCount = pages.getTotalPageCount();
//        //控制首页和尾页
//        if(currentPageNo < 1){
//            currentPageNo = 1;
//        }else if(currentPageNo > totalPageCount){
//            currentPageNo = totalPageCount;
//        }
//        try {
//            app_infoList = appInfoService.getAppInfoList(
//                    querySoftwareName,
//                    queryStatus,
//                    queryCategoryLevel1,
//                    queryCategoryLevel2,
//                    queryCategoryLevel3,
//                    queryFlatformId,
//                    currentPageNo,
//                    pageSize,
//                    devId);
//            flatFormList = this.getDataDictionaryList("APP_FLATFORM");
//            categoryLevel1List = appInfoService.getAppCategoryListByParentId(null);
//        } catch (Exception e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//        return "Login";
//    }
}
