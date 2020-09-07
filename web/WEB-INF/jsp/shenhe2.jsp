<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header2.jsp" %>
<div class="page-title">
    <h3>你所在的位置是：管理员审核 > APP维护>查看并审核APP信息：${ADMIN_SESSION.userName}</h3>
    <div style="height: 420px;" class="x_panel tile fixed_height_320 overflow_hidden">
        <div class="x_title">
            <p>App基础信息</p>
            <div class="clearfix">
                <input type="hidden" name="id2" value="${ChakanList.id}">

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
        <button style="margin-left: 400px" type="submit" class="btn btn-primary" onclick="tongguo()">审核通过</button>
        <button type="submit" class="btn btn-primary" onclick="butongguo()">审核不通过</button>
        <button type="submit" class="btn btn-primary" onclick="">返回</button>
    </div>
    <div style="height: 190px;" class="x_panel tile fixed_height_320 overflow_hidden">
        <div class="x_title">
            <p>最新版本信息</p>
            <div class="clearfix">
                <div class="clearfix">

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">版本号： </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" disabled="disabled"
                                   placeholder="${ChakanBanben222.versionNo}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">版本大小： </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" disabled="disabled"
                                   placeholder="${ChakanBanben222.versionSize}M0">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">发布状态： </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" disabled="disabled"
                                   placeholder="${ChakanBanben222.publishStatusName}">
                        </div>
                    </div>

                </div>


            </div>
        </div>
    </div>
</div>
<%@include file="fooder.jsp" %>
<script type="text/javascript" src="/statics/js/rollpage.js"></script>
<script type="text/javascript" src="/statics/js/tongguo.js"></script>
<script type="text/javascript" src="/statics/js/jquery-3.4.1.min.js"></script>
<%--<script>--%>
<%--window.onload = function(){--%>

<%--var aLi = document.getElementsByTagName('tr');--%>
<%--for(var i=0;i<aLi.length;i++){--%>
<%--if(i%2==0){--%>
<%--aLi[i].style.background = '#ccc';--%>
<%--}--%>
<%--else{--%>
<%--aLi[i].style.background = '';--%>
<%--}--%>
<%--}--%>
<%--}--%>
<%--</script>--%>

<script>
    function iddd(id) {
        alert("当前id是" + id)
    }
</script>
<style>

</style>
