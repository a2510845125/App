<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header2.jsp"%>
<div class="page-title">
    <h3>

    </h3>   <div class="report">
    <script>
        var weekDayLabels = new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
        var now = new Date();
        var year=now.getFullYear();
        var month=now.getMonth()+1;
        var day=now.getDate()
        var currentime = '<span class="special">当前时间：'+year+'年'+month+'月'+day+'日                '+weekDayLabels[now.getDay()]+'</span><br>'
        document.write(currentime)
    </script>
</div>
    <iframe frameborder="0" scrolling="no" hspace="0" src="https://i.tianqi.com/?c=code&a=getcode&id=35&h=55&w=200"></iframe>

</div>
<%@include file="bg.jsp"%>
<%@include file="fooder.jsp"%>
