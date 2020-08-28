<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@include file="header.jsp" %>
<div class="page-title">
    <h3>你所在的位置是：APP应用管理 > 新增版本</h3>
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
                    <%--<span>--%>
                        <%--<fmt:formatDate value="${as.creationDate}" type="date"/>--%>
                    <%--</span>--%>
                    <span>${as.creationDate}</span>
                </div>
            </c:forEach>
        </div>
    </div>
    <div style="height: 400px;" class="x_panel tile fixed_height_320 overflow_hidden">
        <div class="x_title" style="border-bottom: 0px solid black">
            <p>新增版本信息</p>
            <div class="clearfix">
                <div class="form-group">
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">当前软件ID :</label>
                        <input disabled="disabled" style="width: 300px;" type="text" name="appId" class="form-control"
                               value="${ChakanList.id}">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">版本号 :</label>
                        <input style="width: 300px;" type="text" name="versionNo" class="form-control" value="">
                    </div>
                </div>

                <div class="form-group">

                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">版本大小 </label>
                        <input style="width: 300px;" type="text" name="versionSize" class="form-control" value="">
                    </div>
                </div>

                <div class="form-group">

                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">发布状态 </label>
                        <input disabled="disabled" style="width: 300px;" type="text" name="" class="form-control"
                               value="预发布">
                        <input type="hidden" name="publishStatus" value="1">
                    </div>
                </div>

            </div>

        </div>
        <div class="form-group">
            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                <button type="submit" class="btn btn-primary" onclick="addByid()">保存</button>
                <button type="submit" class="btn btn-success">返回</button>
            </div>
        </div>
    </div>
</div>


<%@include file="fooder.jsp" %>
<script src="/statics/js/addByid.js"></script>
