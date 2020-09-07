<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
<div class="page-title">

    <div style="height: 200px;" class="x_panel tile fixed_height_320 overflow_hidden">
        <div class="x_title" style="border-bottom: 0px solid black">
            <p style="color: black">历史版本列表</p>
            <div style="border: none;" class="col-md-2 col-sm-12 col-xs-12 form-group">
                <span style="color: black">软件名称</span>
            </div>
            <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">

                <span style="color: black">版本号</span>
            </div>
            <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">

                <span style="color: black">版本大小</span>
            </div>
            <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">

                <span style="color: black">发布状态</span>
            </div>
            <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">

                <span style="color: black">APK文件</span>
            </div>
            <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">

                <span style="color: black">最新更新时间</span>
            </div>
            <c:forEach var="as" items="${ChakanBanben}" varStatus="status">
                <p><br></p>
                <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">
                    <span style="color: black">${as.appName}</span>
                </div>
                <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">
                    <span style="color: black">${as.versionNo}</span>
                </div>
                <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">

                    <span style="color: black">${as.versionSize}M</span>
                </div>
                <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">
                    <span style="color: black">${as.publishStatusName}</span>
                </div>
                <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">
                    <span style="color: black">
                        <%--${as.apkFileName}--%>
                        暂时
                    </span>
                </div>
                <div style="border: none" class="col-md-2 col-sm-12 col-xs-12 form-group">
                        <%--<span>--%>
                        <%--<fmt:formatDate value="${as.creationDate}" type="date"/>--%>
                        <%--</span>--%>
                    <span style="color: black">${as.creationDate}</span>
                </div>
            </c:forEach>
        </div>
    </div>
    <div style="height: 400px;" class="x_panel tile fixed_height_320 overflow_hidden">
        <div class="x_title" style="border-bottom: 0px solid black">
            <p style="color: black">修改最新版本信息</p>
            <div class="clearfix">
                <div class="form-group">
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">当前版本id :</label>
                        <input disabled="disabled" style="width: 300px;" type="text" name="id9" class="form-control"
                               value="${ChakanList.id}">
                    </div>
                </div>
                <%--=================================================当前用户ID--%>


                <input type="hidden" name="modifyBy" value="${userSession.modifyBy}" required="required"

                       class="form-control col-md-7 col-xs-12">

                <%--================================================结束--%>
                <div class="form-group">
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">版本号 :</label>
                        <input disabled="disabled" style="width: 300px;" type="text" name="appId" class="form-control"
                               value="${ChakanList.versionNo}">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">软件大小 :</label>
                        <input style="width: 300px;" type="text" name="softwareSize99" class="form-control"
                               value="${ChakanList.softwareSize}">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">发布状态 </label>
                        <input disabled="disabled" style="width: 300px;" type="text" name="" class="form-control"
                               value="预发布">
                        <input type="hidden" name="publishStatus" value="1">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">版本简介 </label>
                        <input style="width: 300px;" type="text" name="appInfo99" class="form-control"
                               value="${ChakanList.appInfo}">
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">APK文件 </label>
                        <a style="color: black" href="#">/AppInfoSystem/statics/uploadfiles/com.google.android.inputmethod.pinyin-V1.1.1.apk</a>
                        <a style="color: black" href="#">下载</a>
                        <a style="color: black" href="#">删除</a>
                    </div>
                </div>
            </div>

        </div>
        <div class="form-group">
            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                <button type="submit" class="btn btn-primary" onclick="xiugai9()">保存</button>
                <button type="submit" class="btn btn-success">返回</button>
            </div>
        </div>
    </div>
</div>
<%@include file="fooder.jsp" %>
<script type="text/javascript" src="/statics/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/statics/js/xiugaiByid.js"></script>