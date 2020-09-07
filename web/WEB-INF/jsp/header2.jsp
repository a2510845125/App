<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/21
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Bootstrap -->
    <link href="/statics/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/statics/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/statics/css/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/statics/css/green.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="/statics/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="/statics/css/jqvmap.min.css" rel="stylesheet"/>

    <!-- Custom Theme Style -->
    <link href="/statics/css/custom.min.css" rel="stylesheet">
</head>
<body class="nav-md">
<div class="container body">
    <div class="main_container">
        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">
                <%--<div class="navbar nav_title" style="border: 0;">--%>
                    <%--&lt;%&ndash;<a href="/login/Main.html" class="site_title"><i class="fa fa-coffee"></i> <span>APP管理系统</span></a>&ndash;%&gt;--%>
                <%--</div>--%>

                <%--<div class="clearfix"></div>--%>

                <!-- menu profile quick info -->
                <div class="profile">
                    <div class="profile_pic">
                        <img src="/statics/images/u=3679785547,3643600096&fm=26&gp=0.jpg" alt="..." class="img-circle profile_img">
                    </div>
                    <div class="profile_info">
                        <span>Welcome,</span>
                        <h2>${userSession.devCode}</h2>
                    </div>
                </div>
                <!-- /menu profile quick info -->

                <br />

                <!-- sidebar menu -->
                <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                    <div class="menu_section">
                        <h3>${ADMIN_SESSION.userName}</h3>
                        <ul class="nav side-menu">
                            <li><a><i class="fa fa-home"></i> APP账户管理 <span class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu">
                                    <li><a href="/app/getAppList2.html">APP审核</a></li>
                                    <li><a href="index2.html">广告推广</a></li>
                                </ul>
                            </li>


                        </ul>
                    </div>
                    <%--<div class="menu_section">--%>
                        <%--<h3>Live On</h3>--%>
                        <%--<ul class="nav side-menu">--%>
                            <%--<li><a><i class="fa fa-bug"></i> Additional Pages <span class="fa fa-chevron-down"></span></a>--%>
                                <%--<ul class="nav child_menu">--%>
                                    <%--<li><a href="e_commerce.html">E-commerce</a></li>--%>
                                    <%--<li><a href="projects.html">Projects</a></li>--%>
                                    <%--<li><a href="project_detail.html">Project Detail</a></li>--%>
                                    <%--<li><a href="contacts.html">Contacts</a></li>--%>
                                    <%--<li><a href="profile.html">Profile</a></li>--%>
                                <%--</ul>--%>
                            <%--</li>--%>
                            <%--<li><a><i class="fa fa-windows"></i> Extras <span class="fa fa-chevron-down"></span></a>--%>
                                <%--<ul class="nav child_menu">--%>
                                    <%--<li><a href="page_403.html">403 Error</a></li>--%>
                                    <%--<li><a href="page_404.html">404 Error</a></li>--%>
                                    <%--<li><a href="page_500.html">500 Error</a></li>--%>
                                    <%--<li><a href="plain_page.html">Plain Page</a></li>--%>
                                    <%--<li><a href="login.html">Login Page</a></li>--%>
                                    <%--<li><a href="pricing_tables.html">Pricing Tables</a></li>--%>
                                <%--</ul>--%>
                            <%--</li>--%>
                            <%--<li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span class="fa fa-chevron-down"></span></a>--%>
                                <%--<ul class="nav child_menu">--%>
                                    <%--<li><a href="#level1_1">Level One</a>--%>
                                    <%--<li><a>Level One<span class="fa fa-chevron-down"></span></a>--%>
                                        <%--<ul class="nav child_menu">--%>
                                            <%--<li class="sub_menu"><a href="level2.html">Level Two</a>--%>
                                            <%--</li>--%>
                                            <%--<li><a href="#level2_1">Level Two</a>--%>
                                            <%--</li>--%>
                                            <%--<li><a href="#level2_2">Level Two</a>--%>
                                            <%--</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li><a href="#level1_2">Level One</a>--%>
                                    <%--</li>--%>
                                <%--</ul>--%>
                            <%--</li>--%>
                            <%--<li><a href="javascript:void(0)"><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a></li>--%>
                        <%--</ul>--%>
                    <%--</div>--%>
                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <div class="sidebar-footer hidden-small">

                    <a data-toggle="tooltip" data-placement="top" title="Logout" href="/login/zxzx.html">
                        <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                    </a>
                </div>
                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
            <div class="nav_menu">
                <nav>
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class="">
                            <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                <img src="/statics/images/u=1080826656,1945724757&fm=26&gp=0.jpg" alt="">${userSession.devName}
                                <span class=" fa fa-angle-down"></span>
                            </a>
                            <ul class="dropdown-menu dropdown-usermenu pull-right">
                                <li><a href="/login/zxzx.html"><i class="fa fa-sign-out pull-right"></i> 注销</a></li>
                            </ul>
                        </li>

                        <li role="presentation" class="dropdown">

                            <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                                <li>
                                    <a>
                                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                          <span>${userSession.devName}</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                          <span>${userSession.devName}</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                          <span>${userSession.devName}</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a>
                                        <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where...
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <div class="text-center">
                                        <a>
                                            <strong>See All Alerts</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main" style="min-height: 391px;">

</body>
</html>
