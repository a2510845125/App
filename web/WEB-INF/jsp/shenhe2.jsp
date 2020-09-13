<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header2.jsp" %>
<div class="page-title">
    <div style="height: 420px;" class="x_panel tile fixed_height_320 overflow_hidden">
        <div class="x_title">
            <p>App基础信息</p>
            <div class="clearfix">
                <input type="hidden" name="id2" value="${ChakanList.id}">

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">软件名称 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control"  readonly="readonly"
                               value="${ChakanList.softwareName}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">APK名称 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" readonly="readonly" value="${ChakanList.APKName}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">支持ROM </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" readonly="readonly"
                               value="${ChakanList.supportROM}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">界面语言 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" readonly="readonly"
                               value="${ChakanList.interfaceLanguage}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">软件大小 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" readonly="readonly"
                               value="${ChakanList.softwareSize}M">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">下载次数</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" readonly="readonly"
                               value="${ChakanList.downloads}">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">所属分类</label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" readonly="readonly"
                               value="${ChakanList.categoryLevel1Name}>${ChakanList.categoryLevel2Name}>${ChakanList.categoryLevel3Name}">
                    </div>
                </div>


                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">APP状态 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" readonly="readonly"
                               value="${ChakanList.statusName}">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12">应用简介 </label>
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" readonly="readonly" value="${ChakanList.appInfo}">
                    </div>
                </div>

            </div>
        </div>
        <button style="margin-left: 400px;background: white" type="submit" class="btn btn-primary" onclick="tongguo()"><span style="color: black">审核通过</span></button>
        <button type="submit" style="background: red" class="btn btn-primary" onclick="butongguo()"><span style="color: white">审核不通过</span></button>
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
                            <input type="text" class="form-control" readonly="readonly"
                                   value="${ChakanBanben222.versionNo}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">版本大小： </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" readonly="readonly"
                                   value="${ChakanBanben222.versionSize}M">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">发布状态： </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input type="text" class="form-control" readonly="readonly"
                                   value="${ChakanBanben222.publishStatusName}">
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
    li {
        list-style: none; /*去掉小圆点*/
    }

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
