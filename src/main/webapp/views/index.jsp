<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>ILEARN</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="${assetsPath}/css/app.min.css"/>

    <!--<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">-->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

<header>
    <div class="container-fluid">

        <div class="row">
            <div class="col-md-4 logo">
                iLearn
            </div>
            <div class="col-md-4 search">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="搜索内容...">
                              <span class="input-group-btn">
                                <button class="btn btn-default" type="button">搜索</button>
                              </span>
                </div><!-- /input-group -->
            </div>
            <div class="col-md-4 button-group">
                <span class="login"><a href="javascript:void(0)" onclick="openLogin()">登录</a></span>
                <span class="registe"><a href="javascript:void(0)" onclick="openRegister()">注册</a></span>
            </div>


            <div id="modal">
                <!--弹出式登录框-->
                <div class="modal-dialog" id="login">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" onclick="closeLogin()">x</button>
                            <h1 class="text-center text-primary">登录</h1>
                        </div>
                        <div class="modal-body center-block">
                            <form action="" class="form center-block">
                                <div class="input-group">
                                    <!--<label for="examInputEmail1">邮箱:</label>-->
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                    <input type="text" class="form-control input-lg" id="examInputEmail1" name="username"
                                           placeholder="请输入您的用户名"/>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                    <input type="password" class="form-control input-lg" id="examInputPassword1" name="password"
                                           placeholder="请输入您的密码"/>
                                </div>

                                <div class="form-group">
                                    <input type="submit" class="btn btn-primary btn-lg btn-block" value="登录" id="login-in">
                                    <span><a href="javascript:void(0)" style="text-align: left">找回密码</a></span>
                                    <span><a href="javascript:void(0)" class="pull-right re-register">注册</a></span>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                        </div>
                    </div>
                </div>
                <!--注册框-->
                <div class="modal-dialog" id="register">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" onclick="closeRegister()">x</button>
                            <h1 class="text-center text-primary">注册</h1>
                        </div>
                        <div class="modal-body center-block">
                            <form action="" class="form center-block">
                                <div class="input-group">
                                    <!--<label for="examInputEmail1">邮箱:</label>-->
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                                    <input type="email" class="form-control input-lg" id="username"
                                           placeholder="请输入您的用户名"/>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                    <input type="password" class="form-control input-lg" id="password1"
                                           placeholder="请输入您的密码"/>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                                    <input type="password" class="form-control input-lg" id="password2"
                                           placeholder="确认密码"/>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                                    <input type="password" class="form-control input-lg" id="email"
                                           placeholder="邮箱"/>
                                </div>

                                <div class="form-group">
                                    <button class="btn btn-primary btn-lg btn-block">注册</button>
                                    <span><a href="javascript:void(0)" style="text-align: left">找回密码</a></span>
                                    <span><a href="javascript:void(0)" class="pull-right re-login">登录</a></span>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">

                        </div>
                    </div>
                </div>
                <!--遮罩层-->
                <div class="modal-dialog-mask"></div>
            </div>


        </div>
    </div>

</header>

<div class="main index">
    <div class="contain">
        <div class="container">
            <div class="row floor">

                <div class="col-md-3 all-list">
                    <ul>
                        <li class="list-sky">
                            全部课程
                        </li>


                        <c:forEach items="${secondcates}" var="oneTwo" varStatus="status">
                            <li class="list-head">             <!--这是一个大头！！！！-->
                                <div>
                                    <%--resource/${oneTwo.cate_name}--%>
                                    <a href="${rootPath}/resource/course/${oneTwo.cate_name}/1">${oneTwo.cate_name}</a>
                                    <ul class="list-inline">
                                        <li>
                                            <c:forEach items="${oneTwo.cate2s}" var="oneTwo_list" begin="0" end="2">
                                                <a href="${rootPath}/resource/course/JAVA/1">
                                                        ${oneTwo_list}</a>

                                            </c:forEach>
                                        </li>
                                    </ul>
                                </div>

                                <div class="list-menu">
                                    <ul>
                                        <c:forEach items="${oneTwo.children}" var="oneTwo_list" begin="0" end="4">            <%--这里取出了模型中的List--%>
                                        <li class="list-floor">
                                            <div class="floor-head"><strong>${oneTwo_list.cate_name}</strong></div>      <%--右边二级目录测试--%>
                                            <ul class="list-inline floor-menu">
                                                <c:forEach items="${oneTwo_list.cate2s}" var="thirdCate">
                                                    <li class="entry">${thirdCate}</li>
                                                    <%--<li class="entry">Android</li>--%>
                                                    <%--<li class="entry">Android</li>--%>
                                                    <%--<li class="entry">IOS</li>--%>
                                                    <%--<li class="entry">WP</li>--%>
                                                    <%--<li class="entry">黑莓</li>--%>
                                                </c:forEach>
                                            </ul>
                                        </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </li>
                        </c:forEach>




                        <%----%>
                        <%--<li class="list-head">             <!--这是一个大头！！！！-->--%>
                            <%--<div>--%>
                                <%--<a href="">语言留学</a>--%>

                                <%--<ul class="list-inline">--%>
                                    <%--<li>移动开发</li>--%>
                                    <%--<li>编程</li>--%>
                                    <%--<li>设计</li>--%>
                                    <%--<li>产品策划</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>

                            <%--<div class="list-menu">--%>
                                <%--<ul>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>应用开发2</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Android</li>--%>
                                            <%--<li class="entry">IOS</li>--%>
                                            <%--<li class="entry">WP</li>--%>
                                            <%--<li class="entry">黑莓</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>前端进阶</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Typescript</li>--%>
                                            <%--<li class="entry">前端安全</li>--%>
                                            <%--<li class="entry">项目实战</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>前端框架</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">jQuery</li>--%>
                                            <%--<li class="entry">jQueryUI</li>--%>
                                            <%--<li class="entry">jQuery Mobile</li>--%>
                                            <%--<li class="entry">Ext JS</li>--%>
                                            <%--<li class="entry">AngularJS</li>--%>
                                            <%--<li class="entry">ReactJS</li>--%>
                                            <%--<li class="entry">Bootstrap</li>--%>
                                            <%--<li class="entry">React Native</li>--%>
                                            <%--<li class="entry">Backbone</li>--%>
                                            <%--<li class="entry">Three.js</li>--%>
                                            <%--<li class="entry">MooTools</li>--%>
                                            <%--<li class="entry">Compass</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>HTML5游戏</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Canvas</li>--%>
                                            <%--<li class="entry">SVG</li>--%>
                                            <%--<li class="entry">WebGL</li>--%>
                                            <%--<li class="entry">Cocos2d-js</li>--%>
                                            <%--<li class="entry">CreateJS</li>--%>
                                            <%--<li class="entry">Flash</li>--%>
                                            <%--<li class="entry">Unreal</li>--%>
                                            <%--<li class="entry">Egret</li>--%>
                                            <%--<li class="entry">Phaser</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        <%--</li>--%>

                        <%--<li class="list-head">             <!--这是一个大头！！！！-->--%>
                            <%--<div>--%>
                                <%--<a href="">IT互联网</a>--%>

                                <%--<ul class="list-inline">--%>
                                    <%--<li>移动开发</li>--%>
                                    <%--<li>编程</li>--%>
                                    <%--<li>设计</li>--%>
                                    <%--<li>产品策划</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>

                            <%--<div class="list-menu">--%>
                                <%--<ul>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>应用开发1</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Android</li>--%>
                                            <%--<li class="entry">IOS</li>--%>
                                            <%--<li class="entry">WP</li>--%>
                                            <%--<li class="entry">黑莓</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>前端进阶</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Typescript</li>--%>
                                            <%--<li class="entry">前端安全</li>--%>
                                            <%--<li class="entry">项目实战</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>前端框架</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">jQuery</li>--%>
                                            <%--<li class="entry">jQueryUI</li>--%>
                                            <%--<li class="entry">jQuery Mobile</li>--%>
                                            <%--<li class="entry">Ext JS</li>--%>
                                            <%--<li class="entry">AngularJS</li>--%>
                                            <%--<li class="entry">ReactJS</li>--%>
                                            <%--<li class="entry">Bootstrap</li>--%>
                                            <%--<li class="entry">React Native</li>--%>
                                            <%--<li class="entry">Backbone</li>--%>
                                            <%--<li class="entry">Three.js</li>--%>
                                            <%--<li class="entry">MooTools</li>--%>
                                            <%--<li class="entry">Compass</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>HTML5游戏</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Canvas</li>--%>
                                            <%--<li class="entry">SVG</li>--%>
                                            <%--<li class="entry">WebGL</li>--%>
                                            <%--<li class="entry">Cocos2d-js</li>--%>
                                            <%--<li class="entry">CreateJS</li>--%>
                                            <%--<li class="entry">Flash</li>--%>
                                            <%--<li class="entry">Unreal</li>--%>
                                            <%--<li class="entry">Egret</li>--%>
                                            <%--<li class="entry">Phaser</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li class="list-head">             <!--这是一个大头！！！！-->--%>
                            <%--<div>--%>
                                <%--<a href="">语言留学</a>--%>

                                <%--<ul class="list-inline">--%>
                                    <%--<li>移动开发</li>--%>
                                    <%--<li>编程</li>--%>
                                    <%--<li>设计</li>--%>
                                    <%--<li>产品策划</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>

                            <%--<div class="list-menu">--%>
                                <%--<ul>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>应用开发2</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Android</li>--%>
                                            <%--<li class="entry">IOS</li>--%>
                                            <%--<li class="entry">WP</li>--%>
                                            <%--<li class="entry">黑莓</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>前端进阶</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Typescript</li>--%>
                                            <%--<li class="entry">前端安全</li>--%>
                                            <%--<li class="entry">项目实战</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>前端框架</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">jQuery</li>--%>
                                            <%--<li class="entry">jQueryUI</li>--%>
                                            <%--<li class="entry">jQuery Mobile</li>--%>
                                            <%--<li class="entry">Ext JS</li>--%>
                                            <%--<li class="entry">AngularJS</li>--%>
                                            <%--<li class="entry">ReactJS</li>--%>
                                            <%--<li class="entry">Bootstrap</li>--%>
                                            <%--<li class="entry">React Native</li>--%>
                                            <%--<li class="entry">Backbone</li>--%>
                                            <%--<li class="entry">Three.js</li>--%>
                                            <%--<li class="entry">MooTools</li>--%>
                                            <%--<li class="entry">Compass</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>HTML5游戏</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Canvas</li>--%>
                                            <%--<li class="entry">SVG</li>--%>
                                            <%--<li class="entry">WebGL</li>--%>
                                            <%--<li class="entry">Cocos2d-js</li>--%>
                                            <%--<li class="entry">CreateJS</li>--%>
                                            <%--<li class="entry">Flash</li>--%>
                                            <%--<li class="entry">Unreal</li>--%>
                                            <%--<li class="entry">Egret</li>--%>
                                            <%--<li class="entry">Phaser</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li class="list-head">             <!--这是一个大头！！！！-->--%>
                            <%--<div>--%>
                                <%--<a href="">职场技能</a>--%>

                                <%--<ul class="list-inline">--%>
                                    <%--<li>移动开发</li>--%>
                                    <%--<li>编程</li>--%>
                                    <%--<li>设计</li>--%>
                                    <%--<li>产品策划</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>

                            <%--<div class="list-menu">--%>
                                <%--<ul>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>应用开发3</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Android</li>--%>
                                            <%--<li class="entry">IOS</li>--%>
                                            <%--<li class="entry">WP</li>--%>
                                            <%--<li class="entry">黑莓</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>前端进阶</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Typescript</li>--%>
                                            <%--<li class="entry">前端安全</li>--%>
                                            <%--<li class="entry">项目实战</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>前端框架</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">jQuery</li>--%>
                                            <%--<li class="entry">jQueryUI</li>--%>
                                            <%--<li class="entry">jQuery Mobile</li>--%>
                                            <%--<li class="entry">Ext JS</li>--%>
                                            <%--<li class="entry">AngularJS</li>--%>
                                            <%--<li class="entry">ReactJS</li>--%>
                                            <%--<li class="entry">Bootstrap</li>--%>
                                            <%--<li class="entry">React Native</li>--%>
                                            <%--<li class="entry">Backbone</li>--%>
                                            <%--<li class="entry">Three.js</li>--%>
                                            <%--<li class="entry">MooTools</li>--%>
                                            <%--<li class="entry">Compass</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>HTML5游戏</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Canvas</li>--%>
                                            <%--<li class="entry">SVG</li>--%>
                                            <%--<li class="entry">WebGL</li>--%>
                                            <%--<li class="entry">Cocos2d-js</li>--%>
                                            <%--<li class="entry">CreateJS</li>--%>
                                            <%--<li class="entry">Flash</li>--%>
                                            <%--<li class="entry">Unreal</li>--%>
                                            <%--<li class="entry">Egret</li>--%>
                                            <%--<li class="entry">Phaser</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li class="list-head">             <!--这是一个大头！！！！-->--%>
                            <%--<div>--%>
                                <%--<a href="">兴趣爱好</a>--%>

                                <%--<ul class="list-inline">--%>
                                    <%--<li>移动开发</li>--%>
                                    <%--<li>编程</li>--%>
                                    <%--<li>设计</li>--%>
                                    <%--<li>产品策划</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>

                            <%--<div class="list-menu">--%>
                                <%--<ul>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>应用开发4</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Android</li>--%>
                                            <%--<li class="entry">IOS</li>--%>
                                            <%--<li class="entry">WP</li>--%>
                                            <%--<li class="entry">黑莓</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>前端进阶</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Typescript</li>--%>
                                            <%--<li class="entry">前端安全</li>--%>
                                            <%--<li class="entry">项目实战</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>前端框架</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">jQuery</li>--%>
                                            <%--<li class="entry">jQueryUI</li>--%>
                                            <%--<li class="entry">jQuery Mobile</li>--%>
                                            <%--<li class="entry">Ext JS</li>--%>
                                            <%--<li class="entry">AngularJS</li>--%>
                                            <%--<li class="entry">ReactJS</li>--%>
                                            <%--<li class="entry">Bootstrap</li>--%>
                                            <%--<li class="entry">React Native</li>--%>
                                            <%--<li class="entry">Backbone</li>--%>
                                            <%--<li class="entry">Three.js</li>--%>
                                            <%--<li class="entry">MooTools</li>--%>
                                            <%--<li class="entry">Compass</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>HTML5游戏</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Canvas</li>--%>
                                            <%--<li class="entry">SVG</li>--%>
                                            <%--<li class="entry">WebGL</li>--%>
                                            <%--<li class="entry">Cocos2d-js</li>--%>
                                            <%--<li class="entry">CreateJS</li>--%>
                                            <%--<li class="entry">Flash</li>--%>
                                            <%--<li class="entry">Unreal</li>--%>
                                            <%--<li class="entry">Egret</li>--%>
                                            <%--<li class="entry">Phaser</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li class="list-head">             <!--这是一个大头！！！！-->--%>
                            <%--<div>--%>
                                <%--<a href="">升学考研</a>--%>

                                <%--<ul class="list-inline">--%>
                                    <%--<li>移动开发</li>--%>
                                    <%--<li>编程</li>--%>
                                    <%--<li>设计</li>--%>
                                    <%--<li>产品策划</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>

                            <%--<div class="list-menu">--%>
                                <%--<ul>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>应用开发5</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Android</li>--%>
                                            <%--<li class="entry">IOS</li>--%>
                                            <%--<li class="entry">WP</li>--%>
                                            <%--<li class="entry">黑莓</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>前端进阶</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Typescript</li>--%>
                                            <%--<li class="entry">前端安全</li>--%>
                                            <%--<li class="entry">项目实战</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>前端框架</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">jQuery</li>--%>
                                            <%--<li class="entry">jQueryUI</li>--%>
                                            <%--<li class="entry">jQuery Mobile</li>--%>
                                            <%--<li class="entry">Ext JS</li>--%>
                                            <%--<li class="entry">AngularJS</li>--%>
                                            <%--<li class="entry">ReactJS</li>--%>
                                            <%--<li class="entry">Bootstrap</li>--%>
                                            <%--<li class="entry">React Native</li>--%>
                                            <%--<li class="entry">Backbone</li>--%>
                                            <%--<li class="entry">Three.js</li>--%>
                                            <%--<li class="entry">MooTools</li>--%>
                                            <%--<li class="entry">Compass</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>HTML5游戏</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Canvas</li>--%>
                                            <%--<li class="entry">SVG</li>--%>
                                            <%--<li class="entry">WebGL</li>--%>
                                            <%--<li class="entry">Cocos2d-js</li>--%>
                                            <%--<li class="entry">CreateJS</li>--%>
                                            <%--<li class="entry">Flash</li>--%>
                                            <%--<li class="entry">Unreal</li>--%>
                                            <%--<li class="entry">Egret</li>--%>
                                            <%--<li class="entry">Phaser</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        <%--</li>--%>
                        <%--<li class="list-head">             <!--这是一个大头！！！！-->--%>
                            <%--<div>--%>
                                <%--<a href="">更多分类</a>--%>

                                <%--<ul class="list-inline">--%>
                                    <%--<li>移动开发</li>--%>
                                    <%--<li>编程</li>--%>
                                    <%--<li>设计</li>--%>
                                    <%--<li>产品策划</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>

                            <%--<div class="list-menu">--%>
                                <%--<ul>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>应用开发5</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Android</li>--%>
                                            <%--<li class="entry">IOS</li>--%>
                                            <%--<li class="entry">WP</li>--%>
                                            <%--<li class="entry">黑莓</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>前端进阶</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Typescript</li>--%>
                                            <%--<li class="entry">前端安全</li>--%>
                                            <%--<li class="entry">项目实战</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>前端框架</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">jQuery</li>--%>
                                            <%--<li class="entry">jQueryUI</li>--%>
                                            <%--<li class="entry">jQuery Mobile</li>--%>
                                            <%--<li class="entry">Ext JS</li>--%>
                                            <%--<li class="entry">AngularJS</li>--%>
                                            <%--<li class="entry">ReactJS</li>--%>
                                            <%--<li class="entry">Bootstrap</li>--%>
                                            <%--<li class="entry">React Native</li>--%>
                                            <%--<li class="entry">Backbone</li>--%>
                                            <%--<li class="entry">Three.js</li>--%>
                                            <%--<li class="entry">MooTools</li>--%>
                                            <%--<li class="entry">Compass</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                    <%--<li class="list-floor">--%>
                                        <%--<div class="floor-head"><strong>HTML5游戏</strong></div>--%>
                                        <%--<ul class="list-inline floor-menu">--%>
                                            <%--<li class="entry">Canvas</li>--%>
                                            <%--<li class="entry">SVG</li>--%>
                                            <%--<li class="entry">WebGL</li>--%>
                                            <%--<li class="entry">Cocos2d-js</li>--%>
                                            <%--<li class="entry">CreateJS</li>--%>
                                            <%--<li class="entry">Flash</li>--%>
                                            <%--<li class="entry">Unreal</li>--%>
                                            <%--<li class="entry">Egret</li>--%>
                                            <%--<li class="entry">Phaser</li>--%>
                                        <%--</ul>--%>
                                    <%--</li>--%>
                                <%--</ul>--%>
                            <%--</div>--%>
                        <%--</li>--%>

                    </ul>
                </div>

                <div class="col-md-6 tabimg">
                    <div>
                        <ul class="list-inline">
                            <li class="head">免费课程</li><!--
                                --><li class="head">收费课程</li><!--
                                --><li class="head">精品课程</li><!--
                                --><li class="head">考试达人</li>
                        </ul>
                    </div><!--
                        --><div id="carousel-generic" class="carousel slide photo" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <img src="${assetsPath}/images/02.jpg" alt="...">
                            <div class="carousel-caption">
                                2
                            </div>
                        </div>
                        <div class="item">
                            <img src="${assetsPath}/images/03.jpg" alt="...">
                            <div class="carousel-caption">
                                3
                            </div>
                        </div>
                        <div class="item">
                            <img src="${assetsPath}/images/04.jpg" alt="...">
                            <div class="carousel-caption">
                                3
                            </div>
                        </div>



                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                </div>

                <div class="col-md-3 addimg">
                </div>
            </div>

            <div class="course" class="container">
                <div class="row">
                    <div class="col-md-6 img-left">
                        <a href="#"><img src="${assetsPath}/images/course.jpg " alt=""/></a>
                        <p>这是一个标题这是一个标题这是一个标题这是一个标题这是一个标题这是一个标题</p>
                        <div class="addon"><i class="fa fa-fire fa-2x">热门</i></div>
                    </div>
                    <div class="col-md-6 img-right">
                        <div class="row">
                            <div class="col-xs-6 img-right-small">
                                <a href="#"><img src="${assetsPath}/images/course.jpg " alt=""/></a>
                                <p>这是一个小标题这是一个小标题这是一个小标题</p>
                            </div>
                            <div class="col-xs-6 img-right-small">
                                <a href="#"><img src="${assetsPath}/images/course.jpg " alt=""/></a>
                                <p>这是一个小标题这是一个小标题这是一个小标题]</p>
                            </div>
                        </div>
                        <div class="clearfix visible-xs-block"></div>
                        <div class="row">
                            <div class="col-xs-6 img-right-small">
                                <a href="#"><img src="${assetsPath}/images/course.jpg " alt=""/></a>
                                <p>这是一个小标题这是一个小标题这是一个小标题]</p>
                            </div>
                            <div class="col-xs-6 img-right-small">
                                <a href="#"><img src="${assetsPath}/images/course.jpg " alt=""/></a>
                                <p>这是一个小标题这是一个小标题这是一个小标题]</p>
                            </div>
                        </div>
                    </div>
                </div>


            </div>

            <!----------------------------
                           courses
              ------------------------------->
            <div class="courses">
                <div class="container-fluid">
                    <div class="row header">
                        <div class="pull-left col-md-3">
                            <div class="title">生活/文化/兴趣</div>
                        </div>
                        <div class="col-md-4">
                            <ul class="list-inline head-list">
                                <li>前端</li>
                                <li>后端</li>
                                <li>移动开发</li>
                            </ul>
                        </div>
                        <div class="col-md-5 more"><a href="" class="pull-right">&gt;&gt;More</a></div>
                        <!--<div class="clearfix"></div>-->
                    </div>
                    <div class="row body">
                        <div class="row">
                            <div class="col-md-3">
                                <img src="${assetsPath}/images/courses1.jpg" alt=""/>
                            </div>
                            <div class="col-md-3">
                                <div class="info">
                                    <div class="title">
                                        HTML5从如门到精通
                                    </div>
                                    <div class="addon">
                                        <div class="time"><i class="fa fa-clock-o"></i>48课时</div>
                                        <div class="people"><i class="fa fa-user"></i>143人在学</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <img src="${assetsPath}/images/courses2.jpg" alt=""/>
                            </div>
                            <div class="col-md-3">
                                <div class="info">
                                    <div class="title">
                                        IOS8企业项目开发系列课程
                                    </div>
                                    <div class="addon">
                                        <div class="time"><i class="fa fa-clock-o"></i>107课时</div>
                                        <div class="people"><i class="fa fa-user"></i>850人在学</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <img src="${assetsPath}/images/courses3.jpg" alt=""/>
                            </div>
                            <div class="col-md-3">
                                <div class="info">
                                    <div class="title">
                                        交互设计精品课--输入和输出
                                    </div>
                                    <div class="addon">
                                        <div class="time"><i class="fa fa-clock-o"></i>2课时</div>
                                        <div class="people"><i class="fa fa-user"></i>5人在学</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <img src="${assetsPath}/images/courses4.png" alt=""/>
                            </div>
                            <div class="col-md-3">
                                <div class="info">
                                    <div class="title">
                                        Web前端开发规范
                                    </div>
                                    <div class="addon">
                                        <div class="time"><i class="fa fa-clock-o"></i>25课时</div>
                                        <div class="people"><i class="fa fa-user"></i>1302人在学</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="courses">
                <div class="container-fluid">
                    <div class="row header">
                        <div class="pull-left col-md-3">
                            <div class="title">生活/文化/兴趣</div>
                        </div>
                        <div class="col-md-4">
                            <ul class="list-inline head-list">
                                <li>前端</li>
                                <li>后端</li>
                                <li>移动开发</li>
                            </ul>
                        </div>
                        <div class="col-md-5 more"><a href="" class="pull-right">&gt;&gt;More</a></div>
                        <!--<div class="clearfix"></div>-->
                    </div>
                    <div class="row body">
                        <div class="row">
                            <div class="col-md-3">
                                <img src="${assetsPath}/images/courses1.jpg" alt=""/>
                            </div>
                            <div class="col-md-3">
                                <div class="info">
                                    <div class="title">
                                        HTML5从如门到精通
                                    </div>
                                    <div class="addon">
                                        <div class="time"><i class="fa fa-clock-o"></i>48课时</div>
                                        <div class="people"><i class="fa fa-user"></i>143人在学</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <img src="${assetsPath}/images/courses2.jpg" alt=""/>
                            </div>
                            <div class="col-md-3">
                                <div class="info">
                                    <div class="title">
                                        IOS8企业项目开发系列课程
                                    </div>
                                    <div class="addon">
                                        <div class="time"><i class="fa fa-clock-o"></i>107课时</div>
                                        <div class="people"><i class="fa fa-user"></i>850人在学</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <img src="${assetsPath}/images/courses3.jpg" alt=""/>
                            </div>
                            <div class="col-md-3">
                                <div class="info">
                                    <div class="title">
                                        交互设计精品课--输入和输出
                                    </div>
                                    <div class="addon">
                                        <div class="time"><i class="fa fa-clock-o"></i>2课时</div>
                                        <div class="people"><i class="fa fa-user"></i>5人在学</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <img src="${assetsPath}/images/courses4.png" alt=""/>
                            </div>
                            <div class="col-md-3">
                                <div class="info">
                                    <div class="title">
                                        Web前端开发规范
                                    </div>
                                    <div class="addon">
                                        <div class="time"><i class="fa fa-clock-o"></i>25课时</div>
                                        <div class="people"><i class="fa fa-user"></i>1302人在学</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="courses">
                <div class="container-fluid">
                    <div class="row header">
                        <div class="pull-left col-md-3">
                            <div class="title">生活/文化/兴趣</div>
                        </div>
                        <div class="col-md-4">
                            <ul class="list-inline head-list">
                                <li>前端</li>
                                <li>后端</li>
                                <li>移动开发</li>
                            </ul>
                        </div>
                        <div class="col-md-5 more"><a href="" class="pull-right">&gt;&gt;More</a></div>
                        <!--<div class="clearfix"></div>-->
                    </div>
                    <div class="row body">
                        <div class="row">
                            <div class="col-md-3">
                                <img src="${assetsPath}/images/courses1.jpg" alt=""/>
                            </div>
                            <div class="col-md-3">
                                <div class="info">
                                    <div class="title">
                                        HTML5从如门到精通
                                    </div>
                                    <div class="addon">
                                        <div class="time"><i class="fa fa-clock-o"></i>48课时</div>
                                        <div class="people"><i class="fa fa-user"></i>143人在学</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <img src="${assetsPath}/images/courses2.jpg" alt=""/>
                            </div>
                            <div class="col-md-3">
                                <div class="info">
                                    <div class="title">
                                        IOS8企业项目开发系列课程
                                    </div>
                                    <div class="addon">
                                        <div class="time"><i class="fa fa-clock-o"></i>107课时</div>
                                        <div class="people"><i class="fa fa-user"></i>850人在学</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <img src="${assetsPath}/images/courses3.jpg" alt=""/>
                            </div>
                            <div class="col-md-3">
                                <div class="info">
                                    <div class="title">
                                        交互设计精品课--输入和输出
                                    </div>
                                    <div class="addon">
                                        <div class="time"><i class="fa fa-clock-o"></i>2课时</div>
                                        <div class="people"><i class="fa fa-user"></i>5人在学</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <img src="${assetsPath}/images/courses4.png" alt=""/>
                            </div>
                            <div class="col-md-3">
                                <div class="info">
                                    <div class="title">
                                        Web前端开发规范
                                    </div>
                                    <div class="addon">
                                        <div class="time"><i class="fa fa-clock-o"></i>25课时</div>
                                        <div class="people"><i class="fa fa-user"></i>1302人在学</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



        </div>
    </div>
</div>



<footer>
    <div class="container site-info">
        <div class="row">
            <div class="col-xs-2"><a href="/"><img src="${assetsPath}/images/logo.png" alt="" width="120"></a></div>
            <div class="col-xs-6">
                <div class="row">
                    <div class="col-xs-6">
                        <h3>统计信息</h3>
                        <p>网站总访问量 : 1365544</p>
                        <p>当前在线人数 : 42554</p>
                        <p>页面加载时间 : 0.000234</p>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 contacts">
                <div class="contact-detail">
                    <p><i class="fa fa-map-marker"></i>江苏省南京市</p>
                    <p><i class="fa fa-phone"></i>123-456-789</p>
                    <p><i class="fa fa-envelope"></i>1234567@qq.com</p>
                </div>
                <span>关注我们:</span>
                <a href=""><i class="contact-icon fa fa-weibo"></i></a>
                <a href=""><i class="contact-icon fa fa-weixin"></i></a>
                <a href=""><i class="contact-icon fa fa-qq"></i></a>
                <a href=""><i class="contact-icon fa fa-renren"></i></a>
            </div>
        </div>
    </div>
    </div>
    <div class="copyright">

        <p>CopyrightBy--Mr.z</p>
    </div>
</footer>

<script>
    $(document).ready(function () {
        $(".list-head").mouseenter(function () {
            $(this).find(".list-menu").show();
        });
        $(".list-head").mouseleave(function () {
            $(this).find(".list-menu").hide();
        });
        $(".list-menu").mouseover(function () {
            $(this).show();
        })
        $(".list-menu").mouseleave(function () {
            $(this).hide();
        })
    });
</script>
<script>
    //弹出层
    function openLogin() {
        $('.modal-dialog-mask').fadeIn(100);
        $("#login").slideDown(400);
    }
    function closeLogin() {
        $('.modal-dialog-mask').fadeOut(100);
        $("#login").slideUp(400);
    }

    function openRegister() {
        $('.modal-dialog-mask').fadeIn(100);
        $("#register").slideDown(400);
    }
    function closeRegister() {
        $('.modal-dialog-mask').fadeOut(100);
        $("#register").slideUp(400);
    }

    $("#login .re-register").click(function () {
        $("#login").css("display","none");
        $("#register").css("display","block");
    });
    $("#register .re-login").click(function () {
        $("#login").css("display","block");
        $("#register").css("display","none");
    });
</script>
</body>
</html>