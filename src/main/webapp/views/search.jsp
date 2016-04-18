<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css/app.min.css"/>
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="./js/navLink.js"></script>
</head>
<body>
<jsp:include page="common/header.jsp" />

<div class="main course">
    <div class="contain">
        <div class="container">
            <div class="breadcrumb-main">
                <ol class="breadcrumb">
                    <li><a href="/">首页</a></li>
                    <li><a href="">课程</a></li>
                </ol>
            </div>



            <!----------------------------
                         body
             ------------------------------->
            <div class="course-body">
                <div class="container">
                    <div class="row">
                        <ul class="list-inline courses-sort">
                            <li>最热</li>
                            <li>最新</li>
                            <li>免费</li>
                        </ul>
                    </div>

                    <div class="floor">
                        <ul>

                            <c:forEach items="${page.list}" var="result">
                                <li>
                                    <div class="image">
                                        <img src="${result.imgurl}" alt=""/>
                                    </div>
                                    <div class="title">${result.title}</div>
                                        <%--<div class="price">${coursepage1.price}</div>--%>
                                    <div class="add pull-left">附加信息</div>
                                    <div class="people pull-right">${result.joinNumber}</div>
                                    <div class="clearfix"></div>
                                    <div class="line"></div>
                                    <div class="src">${result.sourceWeb}</div>
                                </li>
                            </c:forEach>
                            
                            <div class="clearfix"></div>
                        </ul>
                    </div>





                </div>

                <jsp:include page="common/pagination.jsp" />

            </div>

        </div>

    </div>
</div>


<footer>
    <div class="container site-info">
        <div class="row">
            <div class="col-xs-2"><a href="/"><img src="images/logo.png" alt="" width="120"></a></div>
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