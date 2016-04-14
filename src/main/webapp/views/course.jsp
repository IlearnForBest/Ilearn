<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="css/app.min.css"/>
    <!-- <link rel="stylesheet" href="css/course.css"/> -->
    <!--<script src="./js/jquery-1.7.2.min.js"></script>-->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="./js/navLink.js"></script>
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
                <span class="login"><a href="">登录</a></span>
                <span class="registe"><a href="">注册</a></span>
            </div>
        </div>
    </div>

</header>

<div class="main course">
    <div class="contain">
        <div class="container">
            <div class="breadcrumb-main">
                    <ol class="breadcrumb">
                        <li><a href="/">首页</a></li>
                        <li><a href="">课程</a></li>
                        <!--<li class="active"><a href="">所有课程</a></li>-->
                    </ol>
            </div>

            <div class="select-menu">
                <ul class="select">
                    <li class="select-list">
                        <dl id="select1">
                            <dt>领域：</dt>
                            <dd class="select-all selected"><a href="#">全部</a></dd>
                            <dd><a href="#">IT互联网</a></dd>
                            <dd><a href="#">语言留学</a></dd>
                            <dd><a href="#">职场技能</a></dd>
                            <dd><a href="#">兴趣爱好</a></dd>
                            <dd><a href="#">升学考研</a></dd>
                        </dl>
                    </li>

                    <li class="select-list">
                        <dl id="select2">
                            <dt>方向：</dt>
                            <dd class="select-all selected"><a href="#">全部</a></dd>
                            <dd><a href="#">前端开发</a></dd>
                            <dd><a href="#">后端开发</a></dd>
                            <dd><a href="#">移动开发</a></dd>
                            <dd><a href="#">数据处理</a></dd>
                            <dd><a href="#">图像处理</a></dd>
                        </dl>
                    </li>
                    <li class="select-list">
                        <dl id="select3">
                            <dt>分类：</dt>
                            <dd class="select-all selected"><a href="#">全部</a></dd>
                            <dd><a href="#">HTML/CSS</a></dd>
                            <dd><a href="#">JavaScript</a></dd>
                            <dd><a href="#">CSS3</a></dd>
                            <dd><a href="#">HTML5</a></dd>
                            <dd><a href="#">jQuery</a></dd>
                            <dd><a href="#">AngularJS</a></dd>
                            <dd><a href="#">node.js</a></dd>
                        </dl>
                    </li>
                    <li class="select-result">
                        <dl>
                            <dt>已选条件：</dt>
                            <dd class="select-no">暂时没有选择过滤条件</dd>
                        </dl>
                    </li>

                </ul>
            </div>


            <!----------------------------
                         body
             ------------------------------->
            <div class="course-body">
                <div class="container">
                    <div class="row">
                        <ul class="list-inline">
                            <li>最热</li>
                            <li>最新</li>
                            <li>免费</li>
                        </ul>
                    </div>

                    <ul>
                        <li>
                            <div class="image">
                                <img src="images/courses4.png" alt=""/>
                            </div>
                            <div class="title">课程简介课程简介课程简介</div>
                            <div class="price">免费</div>
                            <div class="add pull-left">附加信息</div>
                            <div class="people pull-right">240人已学</div>
                            <div class="clearfix"></div>
                            <div class="line"></div>
                            <div class="src">来自网易云课堂</div>
                        </li>
                        <li>
                            <div class="image">
                                <img src="images/courses4.png" alt=""/>
                            </div>
                            <div class="title">课程简介课程简介课程简介</div>
                            <div class="price">免费</div>
                            <div class="add pull-left">附加信息</div>
                            <div class="people pull-right">240人已学</div>
                            <div class="clearfix"></div>
                            <div class="line"></div>
                            <div class="src">来自网易云课堂</div>
                        </li>
                        <li>
                            <div class="image">
                                <img src="images/courses4.png" alt=""/>
                            </div>
                            <div class="title">课程简介课程简介课程简介</div>
                            <div class="price">免费</div>
                            <div class="add pull-left">附加信息</div>
                            <div class="people pull-right">240人已学</div>
                            <div class="clearfix"></div>
                            <div class="line"></div>
                            <div class="src">来自网易云课堂</div>
                        </li>
                        <li>
                            <div class="image">
                                <img src="images/courses4.png" alt=""/>
                            </div>
                            <div class="title">课程简介课程简介课程简介</div>
                            <div class="price">免费</div>
                            <div class="add pull-left">附加信息</div>
                            <div class="people pull-right">240人已学</div>
                            <div class="clearfix"></div>
                            <div class="line"></div>
                            <div class="src">来自网易云课堂</div>
                        </li>
                        <div class="clearfix"></div>
                    </ul>


                </div>
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
</body>
</html>