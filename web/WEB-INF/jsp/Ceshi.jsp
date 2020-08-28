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
    <link href="/statics/css/main.css" rel="stylesheet" type="text/css"/>
    <script src="/statics/js/jquery-3.4.1.min.js"></script>
    <script src="/statics/js/qikoo.js"></script>
    <script>
        $(function(){
            $(".del").click(function(){
                qikoo.dialog.confirm('确认删除？',function(){
                },function(){

                });
            })
        })
        function del(){
            $("tr").each(function(index, element) {
                if(index == 1){
                    $(".console-btn-confirm").click(function(){
                        var del = $(this).parents(".mod-dialog").siblings(".z_i").find('tr').eq(index);
                        del.remove();
                    })
                }
            });
        }
        function asd() {
            alert("")
        }
    </script>
</head>
<body>
<table class="z_i">
    <tr class="i0">
        <td width="20%">部门</td>
        <td width="35%">工号</td>
        <td width="30%">姓名</td>
        <td width="15%">操作</td>
    </tr>
    <tr class="i1">
        <td width="20%">设计部</td>
        <td width="35%">001</td>
        <td width="30%">陈丹</td>
        <td width="15%"><a href="#" class="del">删除</a></td>
    </tr>
    <tr class="i2">
        <td width="20%">产品部</td>
        <td width="35%">002</td>
        <td width="30%">张静</td>
        <td width="15%"><a href="#" class="del">删除</a></td>
    </tr>
    <tr class="i3">
        <td width="20%">研发部</td>
        <td width="35%">003</td>
        <td width="30%">李伟</td>
        <td width="15%"><a href="#" class="del">删除</a></td>
    </tr>
</table>
<a id="asd" onclick="asd()" href="#">点击</a>
</body>
</html>
