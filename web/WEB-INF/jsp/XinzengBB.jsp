<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
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
                       12202_1390386213_4773.apk
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
        <form id="demo-form2" action="/app/addByid.html" method="post" enctype="multipart/form-data"
              data-parsley-validate class="form-horizontal form-label-left">
        <div class="x_title" style="border-bottom: 0px solid black">
            <p style="color: black">新增版本信息</p>
            <div class="clearfix">
                <div class="form-group">
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12"></label>
                        <input <%--disabled="disabled"--%> style="width: 300px;" type="hidden" name="appId" class="form-control"
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
                        <input style="width: 300px;" type="text" name="versionNo" class="form-control" value="">
                    </div>
                </div>

                <div class="form-group">

                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">版本大小 </label>
                        <input style="width: 300px;" type="text" name="versionSize" class="form-control" value="">
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
                        <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12"
                               for="a_logoPicPath">APK文件 <span class="required"></span>
                        </label>
                        <div class="" style="margin-top: 5px">
                            <input type="file" class="" name="a_logoPicPath"
                                   required="required" id="a_logoPicPath"/>
                            ${fileUploadError }
                        </div>
                    </div>
                </div>



            </div>

        </div>
        <div class="form-group">
            <%--addByid()--%>
            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                <button type="submit" style="background: white" class="btn btn-primary" onclick=""><span style="color: black">保存</span></button>
                <button type="submit" class="btn btn-success">返回</button>
            </div>
        </div>
        </form>
    </div>
</div>


<%@include file="fooder.jsp" %>
<script src="/statics/js/addByid.js"></script>
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
