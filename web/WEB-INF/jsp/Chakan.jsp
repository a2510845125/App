<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
<div class="page-title">
    <h3>你所在的位置是：APP应用管理 > 查看应用信息</h3>
    软件名称：${ChakanList.softwareName}
    <div style="height: 400px;" class="x_panel tile fixed_height_320 overflow_hidden">
        <div class="x_title">
            <p>App基础信息</p>
            <div class="clearfix">
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">软件名称 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" disabled="disabled"
                               placeholder="${ChakanList.softwareName}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">APK名称 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" disabled="disabled" placeholder="${ChakanList.APKName}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">支持ROM </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" disabled="disabled"
                               placeholder="${ChakanList.supportROM}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">界面语言 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" disabled="disabled"
                               placeholder="${ChakanList.interfaceLanguage}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">软件大小 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" disabled="disabled"
                               placeholder="${ChakanList.softwareSize}M">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">下载次数</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" disabled="disabled"
                               placeholder="${ChakanList.downloads}">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">所属分类</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" disabled="disabled"
                               placeholder="${ChakanList.categoryLevel1Name}>${ChakanList.categoryLevel2Name}>${ChakanList.categoryLevel3Name}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">APP状态 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" disabled="disabled"
                               placeholder="${ChakanList.statusName}">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">应用简介 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" disabled="disabled" placeholder="${ChakanList.appInfo}">
                    </div>
                </div>


            </div>
        </div>
    </div>
    <div style="height: 200px;" class="x_panel tile fixed_height_320 overflow_hidden">
        <div class="x_title" style="border-bottom: 0px solid black">
            <p>历史版本列表</p>
            <div style="border: none;" class="col-md-2 col-sm-12 col-xs-12 form-group">
                <span>软件名称</span>
            </div>
            <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">

                <span>版本号</span>
            </div>
            <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">

                <span>版本大小</span>
            </div>
            <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">

                <span>发布状态</span>
            </div>
            <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">

                <span>APK文件</span>
            </div>
            <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">

                <span>最新更新时间</span>
            </div>
            <c:forEach var="as" items="${ChakanBanben}" varStatus="status">
                <p><br></p>
                <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">
                    <span>${as.appName}</span>
                </div>
                <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">
                    <span>${as.versionNo}</span>
                </div>
                <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">

                    <span>${as.versionSize}M</span>
                </div>
                <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">
                    <span>${as.publishStatusName}</span>
                </div>
                <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">
                    <span>
                        <%--${as.apkFileName}--%>
                        暂时
                    </span>
                </div>
                <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">
                    <span>${as.creationDate}</span>
                </div>
            </c:forEach>
        </div>
    </div>


</div>

<%@include file="fooder.jsp" %>
<script type="text/javascript" src="/statics/js/Chakan.js"></script>
