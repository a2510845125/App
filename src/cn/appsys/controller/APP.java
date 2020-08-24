package cn.appsys.controller;

import cn.appsys.pojo.App_info;
import cn.appsys.service.AppInfoService;
import cn.appsys.tools.Constants;
import cn.appsys.tools.PageSupport;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/app")
public class APP {
    @Resource
    private AppInfoService appInfoService;

    @RequestMapping("/appweihu.html")
    public String DevLogin(){
        return "main2";
    }
//查询用户条件
    @RequestMapping(value="/getAppList.html")
    public String getUserLisy(@RequestParam(value = "querysoftwareName",required = false) String querysoftwareName,
                              @RequestParam(value = "queryAPKName",required = false)String queryAPKName,
                              @RequestParam(value = "pageIndex",required = false)String pageIndex,
                              Model model) {
        System.out.println(querysoftwareName+"-----"+queryAPKName+"-----"+pageIndex+"-----");
        //        转换数据类型
        int _queryAPKName=0;
        List<App_info> appInfoList=null;//查询结果
        //        设置页面的容量
        int pageSize= Constants.pageSize;
        //        当前的页码数
        int currentPageNo=1;
        if (querysoftwareName ==null){
            querysoftwareName="";
        }
        if (queryAPKName !=null && !queryAPKName.equals("")){
            _queryAPKName =Integer.valueOf(queryAPKName);
        }
        if (pageIndex !=null){
            try {
                currentPageNo=Integer.valueOf(pageIndex);
            }catch (NumberFormatException nfe){
                return "";
            }
        }
        //        数据的总数量
        int totalCount=appInfoService.getTotalCount(querysoftwareName,_queryAPKName);
        //        计算总页数
        PageSupport pageSupport=new PageSupport();
        pageSupport.setCurrentPageNo(currentPageNo);
        pageSupport.setPageSize(pageSize);
        pageSupport.setTotalCount(totalCount);
        int totalPageCount=pageSupport.getTotalPageCount();
//        控制首页 和尾页
        if (currentPageNo <1){
            currentPageNo=1;
        }
        if (currentPageNo>totalPageCount){
            currentPageNo=totalPageCount;
        }
        //        调用业务层的查询方法 获取数据
        appInfoList=appInfoService.getAppList(querysoftwareName,_queryAPKName,currentPageNo,pageSize);
        for(App_info item :appInfoList){
            System.out.println("元素："+ item);
        }
        //        数据的保存与传递
        model.addAttribute("appInfoList",appInfoList);
        model.addAttribute("querysoftwareName",querysoftwareName);
        model.addAttribute("queryAPKName",queryAPKName);

        model.addAttribute("totalPageCount",totalPageCount);
        model.addAttribute("totalCount",totalCount);
        model.addAttribute("currentPageNo",currentPageNo);

        return "main2";
    }

}
