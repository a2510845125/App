<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/27
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div class="page-title">
    <h3>你所在的位置是：APP应用管理 > 修改APP基本信息</h3>
    <div style="height: 500px;" class="x_panel tile fixed_height_320 overflow_hidden">
        <div class="x_title" >
            <p>App基础信息</p>
            <div class="clearfix">
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">软件ID </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" name="id" class="form-control"disabled="disabled"   value="${ChakanList.id}">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">软件名称 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" name="softwareName" class="form-control"  value="${ChakanList.softwareName}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">APK名称 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" name="APKName" class="form-control"  value="${ChakanList.APKName}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">支持ROM </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" name="supportROM" class="form-control" value="${ChakanList.supportROM}">
                    </div>
                </div>




                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">界面语言 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" name="interfaceLanguage" class="form-control"  value="${ChakanList.interfaceLanguage}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">软件大小 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" name="softwareSize" class="form-control"  value="${ChakanList.softwareSize}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">下载次数</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control"disabled="disabled" value="${ChakanList.downloads}">

                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">所属分类</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control"disabled="disabled"  value="${ChakanList.categoryLevel1Name}>${ChakanList.categoryLevel2Name}>${ChakanList.categoryLevel3Name}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">APP状态 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" disabled="disabled"  value="${ChakanList.statusName}">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">应用简介 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" name="appInfo" class="form-control"  value="${ChakanList.appInfo}">
                    </div>
                </div>

            </div>

        </div>
        <div class="form-group">
            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                <c:if  test="${ChakanList.status==3}">
                    <button type="submit" class="btn btn-primary" onclick="xiugai()">保存并再次提交审核</button>
                </c:if>
                <c:if  test="${ChakanList.status==1}">
                    <button type="submit" class="btn btn-primary" onclick="xiugai()">提交</button>
                </c:if>
                <c:if  test="${ChakanList.status==2}">
                    <button type="submit" class="btn btn-primary" onclick="xiugai()">提交</button>
                </c:if>
                <c:if  test="${ChakanList.status==4}">
                    <button type="submit" class="btn btn-primary" onclick="xiugai()">提交</button>
                </c:if>
                <c:if  test="${ChakanList.status==5}">
                    <button type="submit" class="btn btn-primary" onclick="xiugai()">提交</button>
                </c:if>
                <button type="submit" class="btn btn-success">重填</button>
            </div>
        </div>
    </div>

</div>
</body>
</html>
<%@include file="fooder.jsp"%>
<script type="text/javascript" src="/statics/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/statics/js/XiuGai.js"></script>