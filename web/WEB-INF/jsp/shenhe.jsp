<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header2.jsp" %>
<div class="page-title">
    <div class="report">
        <script>
            var weekDayLabels = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
            var now = new Date();
            var year = now.getFullYear();
            var month = now.getMonth() + 1;
            var day = now.getDate()
            var currentime = '<span  style="color: black" class="special">当前时间：' + year + '年' + month + '月' + day + '日' + weekDayLabels[now.getDay()] + '</span><br>'
            document.write(currentime)
        </script>
    </div>
    <div class="x_panel tile fixed_height_320 overflow_hidden" style="height: 100px;">
        <div class="x_title">
            <p style="color: black">App信息管理维护 ${userSession.devName}，您可以通过搜索筛选框对App的信息进行修改，删除等操作 ^_^</p>
            <div class="clearfix">
                <form method="post" action="${pageContext.request.contextPath }/app/getAppList2.html">
                    <span style="color: black">软件名称：</span>
                    <input style="  border: 1px solid #e5e5e5;
    outline: none;" name="querysoftwareName" type="text" value="${querysoftwareName}">
                    <span style="color: black">APK名称（唯一）：</span>
                    <input style="  border: 1px solid #e5e5e5;
    outline: none;" name="queryAPKName" type="text" value="${queryAPKName}">
                    <span style="color: black">所属平台</span>
                    <select style="color: black" class="m-wrap  " id="flatformId" name="flatformId"
                            style="height: 30px;" class="selectpicker">
                        <option style="color: black" value="0">请选择</option>
                        <option style="color: black" value="1">手机</option>
                        <option style="color: black" value="2">平板</option>
                        <option style="color: black" value="3">通用</option>
                    </select>
                    <span style="color: black">一级分类</span>
                    <select style="color: black" class="m-wrap  " id="categoryLevel1" name="categoryLevel1"
                            style="height: 30px;" class="selectpicker">
                        <option style="color: black" value="0">请选择</option>
                        <option style="color: black" value="1">全部应用</option>
                        <option style="color: black" value="2">全部游戏</option>
                    </select>
                    <span style="color: black">二级分类</span>
                    <select style="color: black" class="m-wrap  " id="categoryLevel2" name="categoryLevel2"
                            style="height: 30px;" class="selectpicker">
                        <option style="color: black" value="0">请选择</option>
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
                    <span style="color: black">三级分类</span>
                    <select style="color: black" class="m-wrap  " id="categoryLevel3" name="categoryLevel3"
                            style="height: 30px;" class="selectpicker">
                        <option value="0">请选择</option>
                        <option value="30">文件管理</option>
                        <option value="31">清理优化</option>
                        <option value="32">安全防护</option>
                        <option value="33">备份还原</option>
                        <option value="34">辅助加强</option>
                        <option value="35">桌面</option>
                        <option value="36">插件</option>
                        <option value="37">锁屏</option>
                        <option value="29">输入法</option>
                    </select>
                    <input type="hidden" name="pageIndex" value="1"/>
                    <input value="查 询" type="submit" id="searchbutton">
                </form>
            </div>
        </div>
    </div>
    <div class="x_panel tile fixed_height_320 overflow_hidden" style="height: 516px;">
        <button style="background: white" type="button" class="btn btn-primary">
            <a style="color: black" href="/app/TiJiao.html">新增APP信息</a>
        </button>
        <div class="x_title" style="border-bottom: 0px solid red">
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th style="color:  black;font-size: 14px" width="12%">软件名称</th>
                    <th style="color:  black;font-size: 14px" width="10%">APK名称（唯一）</th>
                    <th style="color:  black;font-size: 14px" width="5%">大小</th>
                    <th style="color:  black;font-size: 14px" width="15%">所属分类</th>
                    <th style="color:  black;font-size: 14px" width="5%">所属平台</th>
                    <th style="color:  black;font-size: 14px" width="5%">状态</th>
                    <th style="color:  black;font-size: 14px" width="5%">下载次数</th>
                    <th style="color:  black;font-size: 14px" width="5%">最新版本号</th>
                    <th style="color:  black;font-size: 14px" width="5%">操作</th>
                </tr>
                <c:forEach var="app" items="${appInfoList}" varStatus="status">
                    <input id="idd" onclick="iddd(${app.id})" type="hidden" value="${app.id}">
                    <div style="">
                        <tr style="border:1px solid #fafafa;background:#fafcfd;">
                            <td style=" border:1px solid #edf5ec;background:#fafcfd;height: 50px;">
                                <span style="color:  black;font-size: 5px;margin-left: 10px">${app.softwareName}</span>
                            </td>
                            <td style=" border:1px solid #edf5ec;background:#fafcfd;height: 50px;">
                                <span style="color:  black;font-size: 5px;margin-left: 10px">${app.APKName }</span>
                            </td>
                            <td style=" border:1px solid #edf5ec;background:#fafcfd;height: 50px;">
                                <span style="color:  black;font-size: 5px;margin-left: 20px">${app.softwareSize }M</span>
                            </td>
                            <td style=" border:1px solid #edf5ec;background:#fafcfd;height: 50px;">
                                <span style="color:  black;font-size: 5px;margin-left: 20px">${app.categoryLevel1Name}>${app.categoryLevel2Name}>${app.categoryLevel3Name}</span>
                            </td>
                            <td style=" border:1px solid #edf5ec;background:#fafcfd;height: 50px;">
                                <span style="color:  black;font-size: 5px;margin-left: 20px">${app.flatformName }</span>
                            </td>
                            <td style=" border:1px solid #edf5ec;background:#fafcfd;height: 50px;">
                                <span style="color:  black;font-size: 5px;margin-left: 15px">${app.statusName }</span>
                            </td>
                            <td style=" border:1px solid #edf5ec;background:#fafcfd;height: 50px;">
                                <span style="color:  black;font-size: 5px;margin-left: 15px">${app.downloads }</span>
                            </td>
                            <td style=" border:1px solid #edf5ec;background:#fafcfd;height: 50px;">
                                <span style="color:  black;font-size: 5px;margin-left: 15px">${app.versionNo }</span>
                            </td>
                            <td style=" border:1px solid #edf5ec;background:#fafcfd;height: 50px;">
                                <div style="margin-left: 20px" class="btn-group">
                                    <div class="btn-group">
                                        <button type="button">
                                            <a href="/app/chakan2.html?id=${app.id}">审核</a>
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </div>
                </c:forEach>
            </table>
        </div>
        <div style="width: 280px;background: white;position: absolute ;bottom: 30px;left: 950px">
            <div style="">
                <input type="hidden" id="totalPageCount" value="${totalPageCount}"/>
                <c:import url="rollpage.jsp">
                    <c:param name="totalCount" value="${totalCount}"/>
                    <c:param name="currentPageNo" value="${currentPageNo}"/>
                    <c:param name="totalPageCount" value="${totalPageCount}"/>
                </c:import>
            </div>
        </div>
    </div>
</div>
<%@include file="fooder.jsp" %>
<script type="text/javascript" src="/statics/js/rollpage.js"></script>
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
