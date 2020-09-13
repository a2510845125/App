<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/23
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        *{margin: 0;padding: 0;}
        body{ background-color: #3A3A3A; }
        #main{position: absolute;width: 200px;left: 50%;margin-left: -100px;top:200px;text-align: center;}
        #main li{list-style-type: none;margin-top: 5px;}
        #main li a{color: #fff;}
        #main li a:hover{color: #99e;}
        #main li a:active{color: #e99;}
    </style>



    <script src="/statics/js/jquery-3.4.1.min.js"></script>
    <script src="/statics/js/simpleAlert.js"></script>
    <link rel="stylesheet" href="/statics/css/simpleAlert.css">
</head>
<body>
<ul id="main">
    <li id="onlyChoseAlert"><a href="#">单次单选弹框</a></li>
</ul>
</body>
</html>
<script>
    $(function () {
        //单次单选弹框
        $("#onlyChoseAlert").click(function () {
            var onlyChoseAlert = simpleAlert({
                "content":"按确定消失按确定消失!",
                "buttons":{
                    "确定":function () {
                        onlyChoseAlert.close();
                    }
                }
            })
        })
</script>

