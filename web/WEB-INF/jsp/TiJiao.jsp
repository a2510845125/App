<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
<div class="page-title">
    <script>
        var weekDayLabels = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
        var now = new Date();
        var year = now.getFullYear();
        var month = now.getMonth() + 1;
        var day = now.getDate()
        var currentime = '<span style="color: black" class="special">当前时间：' + year + '年' + month + '月' + day + '日                ' + weekDayLabels[now.getDay()] + '</span><br>'
        document.write(currentime)
    </script>
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                <div class="x_title">
                    <h2 style="color: black">新增AP基础信息
                        <small>${userSession.devName}</small>
                    </h2>
                    <ul class="nav navbar-right panel_toolbox">
                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false"><i class="fa fa-wrench"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Settings 1</a>
                                </li>
                                <li><a href="#">Settings 2</a>
                                </li>
                            </ul>
                        </li>
                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="x_content">
                    <form id="demo-form2" action="/app/doAddAPP.html" method="post" enctype="multipart/form-data"
                          data-parsley-validate class="form-horizontal form-label-left">
                        <div class="form-group">
                            <%--=================================================当前用户ID--%>


                                    <input type="hidden" name="modifyBy" value="${userSession.modifyBy}" required="required"

                                           class="form-control col-md-7 col-xs-12">

                            <%--================================================结束--%>


                            <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12"
                                   for="first-name">请输入软件名称 <span
                                    class="required"></span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="softwareName" id="first-name" required="required"
                                       class="form-control col-md-7 col-xs-12">
                            </div>
                        </div>
                        <div class="form-group">
                            <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12"
                                   for="first-name">APK名称（唯一） <span
                                    class="required"></span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="APKName" required="required"
                                       class="form-control col-md-7 col-xs-12">
                            </div>
                        </div>
                        <div class="form-group">
                            <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12"
                                   for="first-name">支持ROM <span
                                    class="required"></span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="supportROM" required="required"
                                       class="form-control col-md-7 col-xs-12">
                            </div>
                        </div>
                        <div class="form-group">
                            <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12"
                                   for="first-name">界面语言 <span
                                    class="required"></span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="interfaceLanguage" required="required"
                                       class="form-control col-md-7 col-xs-12">
                            </div>
                        </div>
                        <div class="form-group">
                            <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12"
                                   for="first-name">软件大小（单位：M） <span
                                    class="required"></span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="softwareSize" required="required"
                                       class="form-control col-md-7 col-xs-12">
                            </div>
                        </div>

                        <div class="form-group">
                            <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12"
                                   for="first-name">所属平台 <span
                                    class="required"></span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select style="color: black" id="flatformId" name="flatformId"
                                        style="width: 580px;height: 30px;"
                                        class="selectpicker">
                                    <option style="color: black" value="1">手机</option>
                                    <option style="color: black" value="2">平板</option>
                                    <option style="color: black" value="3">通用</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12"
                                   for="first-name">一级分类 <span
                                    class="required"></span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select style="color: black" id="categoryLevel1" name="categoryLevel1"
                                        style="width: 580px;height: 30px;"
                                        class="selectpicker">
                                    <option style="color: black" value="1">全部应用</option>
                                    <option style="color: black" value="2">全部游戏</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12"
                                   for="first-name">二级分类 <span
                                    class="required"></span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select style="color: black" id="categoryLevel2" name="categoryLevel2"
                                        style="width: 580px;height: 30px;"
                                        class="selectpicker">
                                    <option style="color: black" value="3">系统工具</option>
                                    <option style="color: black" value="4">桌面插件</option>
                                    <option style="color: black" value="5">主题美化</option>
                                    <option style="color: black" value="6">社交聊天</option>
                                    <option style="color: black" value="7">资讯阅读</option>
                                    <option style="color: black" value="8">通讯网络</option>
                                    <option style="color: black" value="9">影音娱乐</option>
                                    <option style="color: black" value="10">摄影图片</option>
                                    <option style="color: black" value="11">生活服务</option>
                                    <option style="color: black" value="12">实用工具</option>
                                    <option style="color: black" value="13">文档商务</option>
                                    <option style="color: black" value="14">金融财经</option>
                                    <option style="color: black" value="15">运动健康</option>
                                    <option style="color: black" value="16">学习教育</option>
                                    <option style="color: black" value="17">旅行交通</option>
                                    <option style="color: black" value="18">购物</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12"
                                   for="first-name">三级分类 <span
                                    class="required"></span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <select style="color: black" id="categoryLevel3" name="categoryLevel3"
                                        style="width: 580px;height: 30px;"
                                        class="selectpicker">
                                    <option style="color: black" value="29">输入法</option>
                                    <option style="color: black" value="30">文件管理</option>
                                    <option style="color: black" value="31">清理优化</option>
                                    <option style="color: black" value="32">安全防护</option>
                                    <option style="color: black" value="33">备份还原</option>
                                    <option style="color: black" value="34">辅助加强</option>
                                    <option style="color: black" value="35">桌面</option>
                                    <option style="color: black" value="36">插件</option>
                                    <option style="color: black" value="37">锁屏</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12"
                                   for="first-name">下载量 <span
                                    class="required"></span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="downloads" required="required"
                                       class="form-control col-md-7 col-xs-12">
                            </div>
                        </div>


                        <div class="form-group">
                            <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12">状态 </label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <p style="color: black">待审核</p>
                            </div>
                        </div>


                        <div class="form-group">
                            <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12"
                                   for="first-name">应用介绍 <span
                                    class="required"></span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="text" name="appInfo" required="required"
                                       class="form-control col-md-7 col-xs-12">
                            </div>
                        </div>


                        <div class="item form-group">
                            <label style="color: black" class="control-label col-md-3 col-sm-3 col-xs-12"
                                   for="a_logoPicPath">LOGO图片 <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <input type="file" class="form-control col-md-7 col-xs-12" name="a_logoPicPath"
                                       required="required" id="a_logoPicPath"/>
                                ${fileUploadError }
                            </div>
                        </div>


                        <input type="hidden" value="1" name="status" placeholder="1">


                        <div class="ln_solid"></div>


                        <div class="form-group">
                            <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                <button type="submit" class="btn btn-primary" onclick="">添加</button>
                                <button type="submit" class="btn btn-success">重填</button>
                            </div>
                        </div>
                    </form>


                </div>
            </div>
        </div>
    </div>
</div>
</div>
<%@include file="fooder.jsp" %>
<script src="/statics/js/TiJiao.js"></script>