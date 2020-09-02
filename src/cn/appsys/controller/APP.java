package cn.appsys.controller;

import cn.appsys.pojo.App_info;
import cn.appsys.pojo.App_version;
import cn.appsys.service.AppInfoService;
import cn.appsys.service.LoginService;
import cn.appsys.tools.Constants;
import cn.appsys.tools.PageSupport;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.mysql.jdbc.StringUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.math.RandomUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/app")
public class APP {
    @Resource
    private AppInfoService appInfoService;
    @Resource
    private LoginService loginService;

    @RequestMapping("/appweihu.html")
    public String DevLogin() {
        return "main2";
    }
//=====================================================================添加
    //    提交页面的跳转
//@RequestMapping("/TiJiao.html",method = RequestMethod.GET)
//    普通跳转页面 -- 使用springmvc的model对象 生成 并创建一个User对象
//    并将表单中对应的数据 保存在数据中

    @RequestMapping(value = "/TiJiao.html")
    public String TJ() {
        return "TiJiao";
    }

    //    真正执行添加方法的 添加 业务的方法
    @RequestMapping(value = "/doAddAPP.html")
    public void doAddUser(String softwareName,
                          String APKName,
                          String supportROM,
                          String interfaceLanguage,
                          Integer softwareSize,
                          Integer downloads,
                          String appInfo,
                          Integer status,
                          Integer flatformId,
                          Integer categoryLevel1,
                          Integer categoryLevel2,
                          Integer categoryLevel3,
                          HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        System.out.println("=================已经进入添加操作");
        System.out.println("====================所属平台"+flatformId);
        System.out.println("====================一级菜单"+categoryLevel1);
        System.out.println("====================一级菜单"+categoryLevel2);
        System.out.println("====================一级菜单"+categoryLevel3);
        //        调用相关业务
        App_info app_info = new App_info();
        app_info.setSoftwareName(softwareName);
        app_info.setAPKName(APKName);
        app_info.setSupportROM(supportROM);
        app_info.setInterfaceLanguage(interfaceLanguage);
        app_info.setSoftwareSize(softwareSize);
        app_info.setDownloads(downloads);
        app_info.setAppInfo(appInfo);
        app_info.setStatus(status);
        app_info.setFlatformId(flatformId);
        app_info.setCategoryLevel1(categoryLevel1);
        app_info.setCategoryLevel2(categoryLevel2);
        app_info.setCategoryLevel3(categoryLevel3);
        boolean r = appInfoService.add(app_info);
        String status1 = null;
        String message = "";
        if (r) {
            status1 = "1";
            message = "APP添加成功！";
        } else {
            status1 = "0";
            message = "APP添加失败！";
        }
//        json的数据格式 固定格式
        out.print("[{\"status\":\"" + status1 + "\",\"message\":\"" + message + "\"}]");

    }

    //======================================================================================================================
    //查询用户条件
    @RequestMapping(value = "/getAppList.html")
    public String getUserLisy(@RequestParam(value = "querysoftwareName", required = false) String querysoftwareName,
                              @RequestParam(value = "queryAPKName", required = false) String queryAPKName,
                              @RequestParam(value = "flatformId", required = false) String flatformId,
                              @RequestParam(value = "categoryLevel1", required = false) String categoryLevel1,
                              @RequestParam(value = "categoryLevel2", required = false) String categoryLevel2,
                              @RequestParam(value = "categoryLevel3", required = false) String categoryLevel3,
                              @RequestParam(value = "pageIndex", required = false) String pageIndex,
                              Model model) {
        System.out.println(querysoftwareName + "-----" + queryAPKName + "-----" + pageIndex + "-----");
        //        转换数据类型
        String _queryAPKName = null;
        int _flatformId=0;
        int _categoryLevel1=0;
        int _categoryLevel2=0;
        int _categoryLevel3=0;
        if (flatformId !=null && !flatformId.equals("")){
            _flatformId =Integer.valueOf(flatformId);
        }
        if (categoryLevel1 !=null && !categoryLevel1.equals("")){
            _categoryLevel1 =Integer.valueOf(categoryLevel1);
        }
        if (categoryLevel2 !=null && !categoryLevel2.equals("")){
            _categoryLevel2 =Integer.valueOf(categoryLevel2);
        }
        if (categoryLevel3 !=null && !categoryLevel3.equals("")){
            _categoryLevel3 =Integer.valueOf(categoryLevel3);
        }
        List<App_info> appInfoList = null;//查询结果
        //        设置页面的容量
        int pageSize = Constants.pageSize;
        //        当前的页码数
        int currentPageNo = 1;
        if (querysoftwareName == null) {
            querysoftwareName = "";
        }
        if (queryAPKName != null && !queryAPKName.equals("")) {
            _queryAPKName = queryAPKName;
        }
        if (pageIndex != null) {
            try {
                currentPageNo = Integer.valueOf(pageIndex);
            } catch (NumberFormatException nfe) {
                return "";
            }
        }
        //        数据的总数量
        int totalCount = appInfoService.getTotalCount(querysoftwareName, _queryAPKName,_flatformId,_categoryLevel1,_categoryLevel2,_categoryLevel3);
        //        计算总页数
        PageSupport pageSupport = new PageSupport();
        pageSupport.setCurrentPageNo(currentPageNo);
        pageSupport.setPageSize(pageSize);
        pageSupport.setTotalCount(totalCount);
        int totalPageCount = pageSupport.getTotalPageCount();
//        控制首页 和尾页
        if (currentPageNo < 1) {
            currentPageNo = 1;
        }
        if (currentPageNo > totalPageCount) {
            currentPageNo = totalPageCount;
        }
        //        调用业务层的查询方法 获取数据
        appInfoList = appInfoService.getAppList(querysoftwareName, _queryAPKName, _flatformId,_categoryLevel1,_categoryLevel2,_categoryLevel3,currentPageNo, pageSize);
        for (App_info item : appInfoList) {
            System.out.println("元素：" + item);
        }
        System.out.println("进入根据条件查询");
        //        数据的保存与传递
        model.addAttribute("appInfoList", appInfoList);
        model.addAttribute("querysoftwareName", querysoftwareName);
        model.addAttribute("queryAPKName", queryAPKName);
        model.addAttribute("flatformId", flatformId);
        model.addAttribute("categoryLevel1", categoryLevel1);
        model.addAttribute("categoryLevel2", categoryLevel2);
        model.addAttribute("categoryLevel3", categoryLevel3);
        System.out.println("=====================================" + querysoftwareName);
        System.out.println("=====================================" + queryAPKName);
        System.out.println("======================================"+flatformId);
        System.out.println("======================================"+categoryLevel1);
        System.out.println("======================================"+categoryLevel2);
        System.out.println("======================================"+categoryLevel3);
        model.addAttribute("totalPageCount", totalPageCount);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("currentPageNo", currentPageNo);

        return "main2";
    }

    //    ======================================================================================根据id删除APP
    @RequestMapping(value = "/Shanchu.html")
    public String getShanchu(@RequestParam Integer id,
                             HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
        PrintWriter out = response.getWriter();
        System.out.println("已经进入APP删除");
//        调用相关业务

        boolean r = appInfoService.getdelete(id);


        return "redirect:/login/Main.html";
    }

    //    根据id查看详情
    @RequestMapping("/chakan.html")
    public String getChaxun(@RequestParam Integer id, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("-------------------------已经进入查看方法");
        PrintWriter out = response.getWriter();
//        调用相关业务
        System.out.println("id是" + id);
        App_info ChakanList = appInfoService.ChakanList(id);

        int appId = id;
        System.out.println("根据id查看版本信息 appId是" + appId);
        List<App_version> ChakanBanben = appInfoService.ChakanBanben(appId);

        for (App_version a : ChakanBanben) {
            System.out.println("==================================" + a);
        }
        System.out.println(ChakanList);
        request.getSession().setAttribute("ChakanList", ChakanList);
        request.getSession().setAttribute("ChakanBanben", ChakanBanben);
        // out.print(JSON.toJSON(ChakanList));
//        response.sendRedirect("/login/zxzx.html");
        return "redirect:/app/Shanch.html";
    }

    @RequestMapping(value = "/Shanch.html")
    public String getChaxu() {
        return "Chakan";
    }

    //    根据id修改基础信息  第一步 先根据id查看基本信息
    @RequestMapping("/xiugaijiben.html")
    public String getXiuGai_jiBne(@RequestParam Integer id, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("-------------------------已经进入修改基本信息");
        PrintWriter out = response.getWriter();
//        调用相关业务
        System.out.println("id是" + id);
        App_info ChakanList = appInfoService.ChakanList(id);

//        Integer id11=56;
//        System.out.println("根据id查看版本信息" + id11);
//        List<App_info> ChakanBanben = appInfoService.ChakanBanben(id11);
//
//        for (App_info a:ChakanBanben){
//            System.out.println("=================================="+a);
//        }
        System.out.println(ChakanList);
        request.getSession().setAttribute("ChakanList", ChakanList);
//        request.getSession().setAttribute("ChakanBanben", ChakanBanben);
        // out.print(JSON.toJSON(ChakanList));
//        response.sendRedirect("/login/zxzx.html");
        return "redirect:/app/Shan.html";
    }

    @RequestMapping(value = "/Shan.html")
    public String getChax() {
        return "XiuGai_JiBen";
    }


    //    修改上架为下架操作
    @RequestMapping("/xiajia.html")
    public String getShangJiaById(@RequestParam Integer id, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("-------------------------已经上架修改为下架操作");
        PrintWriter out = response.getWriter();
//        调用相关业务
        System.out.println("被下架的商品的id是" + id);
        appInfoService.getShangJiaById(id);

        // out.print(JSON.toJSON(ChakanList));
//        response.sendRedirect("/login/zxzx.html");
        return "redirect:/login/Main.html";
    }

    //    修改下架为上架操作
    @RequestMapping("/shangjia.html")
    public String getXiajiaById(@RequestParam Integer id, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("-------------------------进入下架修改为上架操作");
        PrintWriter out = response.getWriter();
//        调用相关业务
        System.out.println("被上架的商品的id是" + id);
        appInfoService.getXiaJiaById(id);

        // out.print(JSON.toJSON(ChakanList));
//        response.sendRedirect("/login/zxzx.html");
        return "redirect:/login/Main.html";
    }

    //    执行根据id修改操作
    @RequestMapping(value = "/xiugai.html")
    public void modifyUserSave(Integer id,
                               String softwareName,
                               String APKName,
                               String supportROM,
                               String interfaceLanguage,
                               Integer softwareSize,
                               String appInfo,
                               HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        System.out.println("已经进入根据id修改操作");
        //        调用相关业务
        App_info app_info = new App_info();
        app_info.setSoftwareName(softwareName);
        app_info.setAPKName(APKName);
        app_info.setSupportROM(supportROM);
        app_info.setInterfaceLanguage(interfaceLanguage);
        app_info.setSoftwareSize(softwareSize);
        app_info.setAppInfo(appInfo);
        app_info.setId(id);
        System.out.println("==================================id是" + id);
        System.out.println("================================软件名称是" + softwareName);
        System.out.println(APKName);
        System.out.println(supportROM);
        System.out.println(interfaceLanguage);
        System.out.println(softwareSize);
        System.out.println(appInfo);
        boolean r = appInfoService.modifyById(app_info);
        String status1 = null;
        String message = "";
        if (r) {
            status1 = "1";
            message = "APP修改成功！";
        } else {
            status1 = "0";
            message = "APP修改失败！";
        }
//        json的数据格式 固定格式
        out.print("[{\"status\":\"" + status1 + "\",\"message\":\"" + message + "\"}]");
    }


    //    根据信息查看信息并修改版本信息
    @RequestMapping("/xinzeng.html")
    public String xinzeng(@RequestParam Integer id, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("-------------------------已经进入根据信息查看信息并修改版本信息方法");
        PrintWriter out = response.getWriter();
//        调用相关业务
        System.out.println("id是" + id);
        App_info ChakanList = appInfoService.ChakanList(id);

        int appId = id;
        System.out.println("根据id查看版本信息 appId是" + appId);
        List<App_version> ChakanBanben = appInfoService.ChakanBanben(appId);

        for (App_version a : ChakanBanben) {
            System.out.println("==================================" + a);
        }
        System.out.println(ChakanList);
        request.getSession().setAttribute("ChakanList", ChakanList);
        request.getSession().setAttribute("ChakanBanben", ChakanBanben);
        // out.print(JSON.toJSON(ChakanList));
//        response.sendRedirect("/login/zxzx.html");
        return "redirect:/app/xinzeng2.html";
    }

    @RequestMapping(value = "/xinzeng2.html")
    public String xinzeng2() {
        return "XinzengBB";
    }

    //    根据id新增版本
    @RequestMapping(value = "/addByid.html")
    public void addByid(Integer appId,
                        String versionNo,
                        Integer versionSize,
                        Integer publishStatus,
                        HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter out = response.getWriter();
        System.out.println("=================根据id 新增版本操作");
        System.out.println("最新版本"+versionNo);
        System.out.println("软件大小"+versionSize);
        //        调用相关业务
        System.out.println("软件ID是"+appId);
        App_version app_version = new App_version();
        app_version.setAppId(appId);
        app_version.setVersionNo(versionNo);
        app_version.setVersionSize(versionSize);
        app_version.setPublishStatus(publishStatus);
        app_version.setCreationDate(new Date());
        System.out.println("---------------------------进入APP更换最新ID的操作"+appId);


//        App_info app_info = new App_info();
//        app_info.setVersionId(app_version1.getId());
//        app_info.setId(app_version1.getAppId());


//        App_version app_version2=new App_version();
//        app_version2.setAppId(appId);
//        app_version2.setId();



        boolean r = appInfoService.addByid(app_version);
        String status1 = null;
        String message = "";
        if (r) {
            App_version app_version1=appInfoService.Cha(appId);
            App_info app_info1 = new App_info();
            app_info1.setId(app_version1.getAppId());
            System.out.println("====="+app_version1.getAppId());

            app_info1.setVersionId(app_version1.getId());
            System.out.println("====="+app_version1.getId());
            appInfoService.Cha2(app_info1);
            status1 = "1";
            message = "添加成功！";
        } else {
            status1 = "0";
            message = "添加失败！";
        }
//        json的数据格式 固定格式
        out.print("[{\"status\":\"" + status1 + "\",\"message\":\"" + message + "\"}]");
    }


    //    根据信息查看信息并修改版本信息
    @RequestMapping("/xiugai_xiugai.html")
    public String xiugai_xiugai(@RequestParam Integer id, HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("-------------------------已经进入根据信息查看信息并修改版本信息方法");
//        调用相关业务
        System.out.println("id是" + id);
        App_info ChakanList = appInfoService.ChakanList(id);
        PrintWriter out = response.getWriter();

        int appId = id;
        System.out.println("根据id查看版本信息 appId是" + appId);
        List<App_version> ChakanBanben = appInfoService.ChakanBanben(appId);

        for (App_version a : ChakanBanben) {
            System.out.println("==================================" + a);
        }
        System.out.println(ChakanList);
        request.getSession().setAttribute("ChakanList", ChakanList);
        request.getSession().setAttribute("ChakanBanben", ChakanBanben);
        // out.print(JSON.toJSON(ChakanList));
//        response.sendRedirect("/login/zxzx.html");
        return "redirect:/app/xiugai_xiugai2.html";
    }

    @RequestMapping(value = "/xiugai_xiugai2.html")
    public String xinzeng3() {
        return "Xiugai_xiugai";
    }


    @RequestMapping(value = "/xiugaiByid.html")
    public void xiugaiByid(Integer id,
            Integer softwareSize,
                           String appInfo,HttpServletRequest request, HttpServletResponse response)throws IOException{
        PrintWriter out = response.getWriter();
        System.out.println("已经进入根据id修改-修改信息操作");
        //        调用相关业务
        App_info app_info = new App_info();
        app_info.setId(id);
        app_info.setSoftwareSize(softwareSize);
        app_info.setAppInfo(appInfo);
        System.out.println("==========================软件id是"+id);
        System.out.println("==========================软件大小是"+softwareSize);
        System.out.println("==========================软件简介是"+appInfo);
        boolean r = appInfoService.modifyById(app_info);
        String status1 = null;
        String message = "";
        if (r) {
            status1 = "1";
            message = "APP修改成功！";
        } else {
            status1 = "0";
            message = "APP修改失败！";
        }
//        json的数据格式 固定格式
        out.print("[{\"status\":\"" + status1 + "\",\"message\":\"" + message + "\"}]");

    }
}
