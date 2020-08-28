<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp" %>
<div class="page-title">
    <h3>你所在的位置是：APP应用管理 > APP维护</h3>
    <div class="report">
        <script>
            var weekDayLabels = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六");
            var now = new Date();
            var year = now.getFullYear();
            var month = now.getMonth() + 1;
            var day = now.getDate()
            var currentime = '<span class="special">当前时间：' + year + '年' + month + '月' + day + '日' + weekDayLabels[now.getDay()] + '</span><br>'
            document.write(currentime)
        </script>
    </div>

    <div class="x_panel tile fixed_height_320 overflow_hidden" style="height: 100px;">
        <div class="x_title">
            <p>App信息管理维护 ${userSession.devName}，您可以通过搜索筛选框对App的信息进行修改，删除等操作 ^_^</p>
            <div class="clearfix">
                <form method="post" action="${pageContext.request.contextPath }/app/getAppList.html">
                    <span>软件名称：</span>
                    <input name="querysoftwareName" type="text" value="${querysoftwareName}">
                    <span>APK名称（唯一）：</span>
                    <input name="queryAPKName" type="text" value="${queryAPKName}">
                    <input type="hidden" name="pageIndex" value="1"/>
                    <input value="查 询" type="submit" id="searchbutton">
                </form>
            </div>
        </div>
    </div>
    <div class="x_panel tile fixed_height_320 overflow_hidden" style="height: 400px;">
        <button type="button" class="btn btn-primary"><a style="color: white" href="/app/TiJiao.html">新增APP信息</a></button>

        <div class="x_title" style="border-bottom: 0px solid red">
            <table class="providerTable" cellpadding="0" cellspacing="0">
                <tr class="firstTr">
                    <th width="10%">软件id</th>
                    <th width="10%">软件名称</th>
                    <th width="10%">APK名称（唯一）</th>
                    <th width="10%">软件大小</th>
                    <th width="10%">所属分类</th>
                    <th width="10%">所属平台</th>
                    <th width="10%">状态</th>
                    <th width="10%">下载次数</th>
                    <th width="10%">最新版本号</th>
                    <th width="10%">操作</th>
                </tr>
                <c:forEach var="app" items="${appInfoList}" varStatus="status">
                    <input id="idd" onclick="iddd(${app.id})" type="hidden" value="${app.id}">
                    <div>
                        <tr style="border: 1px solid #e9e9e9;">
                            <td style="border: 1px solid #e9e9e9;height: 50px;">
                                <span style="font-size: 5px">${app.id}</span>
                            </td>
                            <td style="border: 1px solid #e9e9e9;height: 50px;">
                                <span style="font-size: 5px">${app.softwareName}</span>
                            </td>
                            <td style="border: 1px solid #e9e9e9;height: 50px;">
                                <span style="font-size: 5px">${app.APKName }</span>
                            </td>
                            <td style="border: 1px solid #e9e9e9;height: 50px;">
                                <span style="font-size: 5px">${app.softwareSize }</span>
                            </td>
                            <td style="border: 1px solid #e9e9e9;height: 50px;">
                                <span style="font-size: 5px">暂时</span>
                            </td>
                            <td style="border: 1px solid #e9e9e9;height: 50px;">
                                <span style="font-size: 5px">${app.flatformId }</span>
                            </td>
                            <td style="border: 1px solid #e9e9e9;height: 50px;">
                                <span style="font-size: 5px">${app.status }</span>
                            </td>
                            <td style="border: 1px solid #e9e9e9;height: 50px;">
                                <span style="font-size: 5px">${app.downloads }</span>
                            </td>
                            <td style="border: 1px solid #e9e9e9;height: 50px;">
                                <span style="font-size: 5px">${app.versionId }</span>
                            </td>
                            <td>
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-default dropdown-toggle"
                                            type="button">
                                        点击操作 <span
                                            class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <%--1--%>
                                        <c:if test="${app.status==1}">
                                            <li>
                                                <a href="/app/xinzeng.html?id=${app.id}">新增版本</a>
                                            </li>
                                            <li>
                                                <a href="/app/xiugai_xiugai.html?id=${app.id}">修改版本</a>
                                            </li>
                                            <li onclick="xiugai()">
                                                <a href="/app/xiugaijiben.html?id=${app.id}">修改</a>
                                            </li>
                                            <li onclick="shanchu()">

                                                <a href="/app/Shanchu.html?id=${app.id}">删除</a>
                                            </li>
                                            <li onclick="chakan()">
                                                <a href="/app/chakan.html?id=${app.id}">查看</a>
                                            </li>
                                        </c:if>
                                        <%--2--%>
                                            <c:if test="${app.status==2}">
                                                <li>
                                                    <a href="/app/xinzeng.html?id=${app.id}">新增版本</a>
                                                </li>
                                                <li>
                                                    <a href="/app/xiugai_xiugai.html?id=${app.id}">修改版本</a>
                                                </li>
                                                <li onclick="xiugai()">
                                                    <a href="/app/xiugaijiben.html?id=${app.id}">修改</a>
                                                </li>
                                                <li onclick="shanchu()">

                                                    <a href="/app/Shanchu.html?id=${app.id}">删除</a>
                                                </li>
                                                <li onclick="chakan()">

                                                    <a href="/app/chakan.html?id=${app.id}">查看</a>
                                                </li>
                                                <li>
                                                    <a href="/app/shangjia.html?id=${app.id}">上架</a>
                                                </li>
                                            </c:if>
                                        <%--3--%>
                                            <c:if test="${app.status==3}">
                                                <li>
                                                    <a href="/app/xinzeng.html?id=${app.id}">新增版本</a>
                                                </li>
                                                <li>
                                                    <a href="/app/xiugai_xiugai.html?id=${app.id}">修改版本</a>
                                                </li>
                                                <li onclick="xiugai()">
                                                    <a href="/app/xiugaijiben.html?id=${app.id}">修改</a>
                                                </li>
                                                <li onclick="shanchu()">
                                                    <a href="/app/Shanchu.html?id=${app.id}">删除</a>
                                                </li>
                                                <li onclick="chakan()">
                                                    <a href="/app/chakan.html?id=${app.id}">查看</a>
                                                </li>
                                            </c:if>
                                        <%--4--%>
                                            <c:if test="${app.status==4}">
                                                <li>
                                                    <a href="/app/xinzeng.html?id=${app.id}">新增版本</a>
                                                </li>
                                                <li>
                                                    <a href="/app/xiugai_xiugai.html?id=${app.id}">修改版本</a>
                                                </li>
                                                <li onclick="xiugai()">
                                                    <a href="/app/xiugaijiben.html?id=${app.id}">修改</a>
                                                </li>
                                                <li onclick="shanchu()">

                                                    <a href="/app/Shanchu.html?id=${app.id}">删除</a>
                                                </li>
                                                <li onclick="chakan()">

                                                    <a href="/app/chakan.html?id=${app.id}">查看</a>
                                                </li>
                                                <li>
                                                    <a href="/app/xiajia.html?id=${app.id}">下架</a>
                                                </li>
                                            </c:if>
                                        <%--5--%>
                                            <c:if test="${app.status==5}">
                                                <li>
                                                    <a href="/app/xinzeng.html?id=${app.id}">新增版本</a>
                                                </li>
                                                <li>
                                                    <a href="/app/xiugai_xiugai.html?id=${app.id}">修改版本</a>
                                                </li>
                                                <li onclick="xiugai()">
                                                    <a href="/app/xiugaijiben.html?id=${app.id}">修改</a>
                                                </li>
                                                <li onclick="shanchu()">

                                                    <a href="/app/Shanchu.html?id=${app.id}">删除</a>
                                                </li>
                                                <li onclick="chakan()">

                                                    <a href="/app/chakan.html?id=${app.id}">查看</a>
                                                </li>
                                                <li>
                                                    <a href="/app/shangjia.html?id=${app.id}">上架</a>
                                                </li>
                                            </c:if>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                    </div>
                </c:forEach>
            </table>
        </div>

    </div>
    <div style="">
        <input type="hidden" id="totalPageCount" value="${totalPageCount}"/>
        <c:import url="rollpage.jsp">
            <c:param name="totalCount" value="${totalCount}"/>
            <c:param name="currentPageNo" value="${currentPageNo}"/>
            <c:param name="totalPageCount" value="${totalPageCount}"/>
        </c:import>
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
    function  iddd(id) {
        alert("当前id是"+id)
    }
</script>
<style>

</style>
