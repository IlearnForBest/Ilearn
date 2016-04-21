<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<header>
  <div class="container-fluid">

    <div class="row">
      <div class="col-md-4 logo">
        <a href="${rootPath}/index" class="col-md-4 logo">iLearn</a>
      </div>
      <div class="col-md-4 search">
        <div class="input-group">

          <form action="${rootPath}/resource/search" method="post" class="form-horizontal col-md-offset-2" role="form">
            <%--<form action="" class="form-horizontal col-md-offset-1" role="form">--%>
            <%--<div class="row">--%>
              <div class="input-group">
                <input type="text" class="form-control" name="keyword" placeholder="搜索内容...">
                <span class="input-group-btn">
                     <button class="btn btn-default" type="submit">搜索</button>
                </span>
              </div>

            <%--</div>--%>

          </form>

        </div><!-- /input-group -->
      </div>
      <div class="col-md-4 button-group">
                <span class="login"><a id="login1" href="javascript:void(0)" onclick="openLogin()"><c:if test="${username ==null}">登录</c:if>
                                                                                  <c:if test="${username!=null}">${username} </c:if></a></span>
        <span class="registe"><a id="logout" href="javascript:void(0)" onclick="openRegister()"><c:if test="${username ==null}">注册</c:if>
                                                                                   <c:if test="${username!=null}">退出</c:if></a></span>
      </div>

      <script>
      //            alert($("#nav-login").text());
      if($("#login1").text().trim()=="${username}"){
      $("#login1").attr("onclick","window.location.href='${rootPath}/user/person'");
      $("#logout").attr("onclick","window.location.href='${rootPath}/user/logout'");
      }
      </script>

      <div id="modal">
        <!--弹出式登录框-->
        <div class="modal-dialog" id="login">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" onclick="closeLogin()">x</button>
              <h1 class="text-center text-primary">登录</h1>
            </div>
            <div class="modal-body center-block">
              <form action="${rootPath}/user/login" method="post" class="form center-block">
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
              <form action="${rootPath}/user/register" method="post" class="form center-block">
                <div class="input-group">
                  <!--<label for="examInputEmail1">邮箱:</label>-->
                  <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                  <input type="text" class="form-control input-lg" id="userName" name="userName"
                         placeholder="请输入您的用户名"/>
                </div>
                <div class="input-group">
                  <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                  <input type="password" class="form-control input-lg" id="password" name="password"
                         placeholder="请输入您的密码"/>
                </div>
                <div class="input-group">
                  <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                  <input type="password" class="form-control input-lg" id="password1" name="password1"
                         placeholder="确认密码"/>
                </div>
                <div class="input-group">
                  <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                  <input type="email" class="form-control input-lg" id="email" name="email"
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