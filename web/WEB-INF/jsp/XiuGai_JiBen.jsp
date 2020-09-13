<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/27
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="page-title">

    <div style="height: 700px;" class="x_panel tile fixed_height_320 overflow_hidden">
        <div class="x_title">
            <p style="color: black">App基础信息</p>
            <div class="clearfix">

                <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">软件ID </label>
                <div class="col-md-9 col-sm-9 col-xs-12">
                    <input type="text" name="id" class="form-control" disabled="disabled" value="${ChakanList.id}">
                </div>


                <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">软件名称 </label>
                <div class="col-md-9 col-sm-9 col-xs-12">
                    <input type="text" name="softwareName" class="form-control" value="${ChakanList.softwareName}">
                </div>


                <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">APK名称 </label>
                <div class="col-md-9 col-sm-9 col-xs-12">
                    <input type="text" name="APKName" class="form-control" value="${ChakanList.APKName}">
                </div>


                <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">支持ROM </label>
                <div class="col-md-9 col-sm-9 col-xs-12">
                    <input type="text" name="supportROM" class="form-control" value="${ChakanList.supportROM}">
                </div>


                <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">界面语言 </label>
                <div class="col-md-9 col-sm-9 col-xs-12">
                    <input type="text" name="interfaceLanguage" class="form-control"
                           value="${ChakanList.interfaceLanguage}">
                </div>


                <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">软件大小 </label>
                <div class="col-md-9 col-sm-9 col-xs-12">
                    <input type="text" name="softwareSize" class="form-control" value="${ChakanList.softwareSize}">
                </div>


                <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">下载次数</label>
                <div class="col-md-9 col-sm-9 col-xs-12">
                    <input type="text" class="form-control" disabled="disabled" value="${ChakanList.downloads}">

                </div>


                <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">所属分类</label>
                <div class="col-md-9 col-sm-9 col-xs-12">
                    <input type="text" class="form-control" disabled="disabled"
                           value="${ChakanList.categoryLevel1Name}>${ChakanList.categoryLevel2Name}>${ChakanList.categoryLevel3Name}">
                </div>


                <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">APP状态 </label>
                <div class="col-md-9 col-sm-9 col-xs-12">
                    <input type="text" class="form-control" disabled="disabled" value="${ChakanList.statusName}">
                </div>


                <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">应用简介 </label>
                <div class="col-md-9 col-sm-9 col-xs-12">
                    <input type="text" name="appInfo" class="form-control" value="${ChakanList.appInfo}">
                </div>


                <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12"
                       for="a_logoPicPath">更换LOGO图片 <span class="required"></span>
                </label>

                <div class="col-md-6 col-sm-6 col-xs-12">
                    <input style="border: 0px solid red;margin-left: -10px;margin-top: 5px" type="file"
                           class="form-control col-md-7 col-xs-12" name="a_logoPicPath"
                           required="required" id="a_logoPicPath"/>
                    ${fileUploadError}
                </div>
                <div style="margin-left: 300px;margin-top: 10px" class="col-md-9 col-sm-9 col-xs-12">
                    <img src="${ChakanList.logoPicPath}" width="150px" height="150px" alt="">
                </div>
            </div>
        </div>

        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
            <c:if test="${ChakanList.status==3}">
                <button type="submit" style="background: white" class="btn btn-primary" onclick="xiugai()"><span style="color: black">保存并再次提交审核</span></button>
            </c:if>
            <c:if test="${ChakanList.status==1}">
                <button type="submit" style="background: white" class="btn btn-primary" onclick="xiugai()"><span style="color: black">保存</span></button>
            </c:if>
            <c:if test="${ChakanList.status==2}">
                <button type="submit" style="background: white" class="btn btn-primary" onclick="xiugai()"><span style="color: black">保存</span></button>
            </c:if>
            <c:if test="${ChakanList.status==4}">
                <button type="submit" style="background: white" class="btn btn-primary" onclick="xiugai()"><span style="color: black">保存</span></button>
            </c:if>
            <c:if test="${ChakanList.status==5}">
                <button type="submit" style="background: white" class="btn btn-primary" onclick="xiugai()"><span style="color: black">保存</span></button>
            </c:if>
            <button type="submit" class="btn btn-success">重填</button>
        </div>

    </div>

</div>
</body>
</html>
<%@include file="fooder.jsp" %>
<script type="text/javascript" src="/statics/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/statics/js/XiuGai.js"></script>
<style>
    *{
        font-family:'Microsoft JhengHei'
    }
    .btn {

        border: 1px solid rgb(211, 215, 217);
        position: relative;
        overflow: hidden;
    }

    .btn:hover {
        box-shadow: 1px 1px 25px 10px rgba(203, 197, 198, 0.2);
    }

    .btn:before {
        content: "";
        position: absolute;
        top: 0;
        left: -100%;
        width: 100%;
        height: 100%;
        background: linear-gradient(
                150deg,
                transparent,
                rgba(184, 176, 176, 0.4),
                transparent
        );
        transition: all 650ms;
    }

    .btn:hover:before {
        left: 100%;
    }
</style>