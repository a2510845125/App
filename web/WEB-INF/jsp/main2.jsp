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

    <div class="x_panel tile fixed_height_320 overflow_hidden" style="height: 200px;">
        <div class="x_title">
            <p>App信息管理维护 ${userSession.devName}，您可以通过搜索筛选框对App的信息进行修改，删除等操作 ^_^</p>
            <div class="clearfix">
                <form method="post" action="${pageContext.request.contextPath }/app/getAppList.html">
                    <span>软件名称：</span>
                    <input name="softwareName" type="text" value="${softwareName}">
                    <span>APK名称（唯一）：</span>
                    <input name="APKName" type="text" value="${APKName}">
                    <input type="hidden" name="pageIndex" value="1"/>
                    <input value="查 询" type="submit" id="searchbutton">
                </form>
            </div>
        </div>
    </div>
    <div class="x_panel tile fixed_height_320 overflow_hidden" style="height: 400px;">
        <div class="x_title">
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
                   <div>
                       <tr>
                           <td>
                               <span style="font-size: 5px">${app.id }</span>
                           </td>
                           <td>
                               <span style="font-size: 5px">${app.softwareName }</span>
                           </td>
                           <td>
                               <span style="font-size: 5px">${app.APKName }</span>
                           </td>
                           <td>
                               <span style="font-size: 5px">${app.softwareSize }</span>
                           </td>
                           <td>
                               <span style="font-size: 5px">暂时</span>
                           </td>
                           <td>
                               <span style="font-size: 5px">${app.flatformId }</span>
                           </td>
                           <td>
                               <span style="font-size: 5px">${app.status }</span>
                           </td>
                           <td>
                               <span style="font-size: 5px">${app.downloads }</span>
                           </td>
                           <td>
                               <span style="font-size: 5px">${app.versionId }</span>
                           </td>
                           <td>
                               <span> <input type="button" value="操作"></span>
                           </td>
                       </tr>
                   </div>
                </c:forEach>
            </table>
        </div>

        <div style="float: right">
            <input type="hidden" id="totalPageCount" value="${totalPageCount}"/>
            <c:import url="rollpage.jsp">
                <c:param name="totalCount" value="${totalCount}"/>
                <c:param name="currentPageNo" value="${currentPageNo}"/>
                <c:param name="totalPageCount" value="${totalPageCount}"/>
            </c:import>
        </div>
    </div>
</div>
<%@include file="fooder.jsp" %>
<script type="text/javascript" src="/statics/js/rollpage.js"></script>
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
