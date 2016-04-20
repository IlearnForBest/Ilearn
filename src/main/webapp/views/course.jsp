<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>course</title>
    <link rel="stylesheet" href="${assetsPath}/css/app.min.css"/>
    <!-- <link rel="stylesheet" href="css/course.css"/> -->
    <!--<script src="./js/jquery-1.7.2.min.js"></script>-->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="${assetsPath}/js/navLink.js"></script>
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
                        <!--<li class="active"><a href="">所有课程</a></li>-->
                    </ol>
            </div>

            <div class="select-menu">
                <ul class="select">
                    <li class="select-list">
                        <dl id="select1">
                            <dt>领域：</dt>
                            <c:if test="${nowCate1==null}">
                                <c:set var="selectedOfClass" value="select-all selected"></c:set>
                            </c:if>
                            <dd class="${selectedOfClass}"><a href="${rootPath}/resource/course">全部</a></dd>

                            <%--<c:set var="selectedOfClass1" value=""></c:set>--%>
                            <c:forEach items="${secondcates}" var="cate1">
                                <c:if test="${nowCate1.cid == cate1.cate_id}">
                                    <c:set var="selectedOfClass1" value="select-all selected"></c:set>
                                </c:if>
                                <dd class="${selectedOfClass1}"><a href="${rootPath}/resource/${cate1.cate_id}/1">${cate1.cate_name}</a></dd>
                                <c:set var="selectedOfClass1" value=""></c:set>
                            </c:forEach>
                        </dl>
                    </li>



                    <li class="select-list">
                        <dl id="select2">
                            <dt>方向：</dt>

                            <c:forEach items="${secondcates}" var="cate1">
                            <c:if test="${nowCate1.cid == cate1.cate_id}">
                                <c:set var="cate2s" value="${cate1.cate2s}"></c:set>
                            </c:if>
                            </c:forEach>


                            <c:set var="selectedOfClass21" value=""></c:set>
                            <c:set var="cate2Url" value="${rootPath}/resource/${nowCate1.cid}/1"></c:set>

                            <c:if test="${nowCate1==null}">
                                <c:set var="selectedOfClass21" value="select-all selected"></c:set>
                                <c:set var="cate2Url" value="${rootPath}/resource/course"></c:set>
                            </c:if>

                            <c:if test="${nowCate2==null}">
                                <c:set var="selectedOfClass21" value="select-all selected"></c:set>
                                <c:set var="cate2Url" value="${rootPath}/resource/${nowCate1.cid}/1"></c:set>
                            </c:if>
                            <dd class="${selectedOfClass21}"><a href="${cate2Url}">全部</a></dd>

                            <c:if test="${nowCate1==null}">
                                <c:forEach items="${allOfCate2}" var="allcate2" begin="6" end="56">
                                    <dd><a href="${rootPath}/resource/${allcate2.cid}/1">
                                            ${allcate2.cateName}</a></dd>
                                </c:forEach>
                            </c:if>

                            <c:forEach items="${cate2s}" var="cate2">
                                <c:if test="${nowCate2.cid == cate2.cid}">
                                    <c:set var="selectedOfClass22" value="select-all selected"></c:set>
                                </c:if>
                                <dd class="${selectedOfClass22}"><a href="${rootPath}/resource/${cate2.cid}/1">
                                ${cate2.cateName}</a></dd>
                                <c:set var="selectedOfClass22" value=""></c:set>
                            </c:forEach>
                        </dl>
                    </li>


                    <li class="select-list">
                        <dl id="select3">
                            <dt>分类：</dt>

                            <c:forEach items="${secondcates}" var="cate1">
                            <c:forEach items="${cate1.children}" var="cate2">
                                <c:if test="${nowCate2.cid == cate2.cate_id}">
                                    <c:set var="cate3s" value="${cate2.cate2s}"></c:set>
                                </c:if>
                            </c:forEach>
                            </c:forEach>

                            <c:set var="selectedOfClass31" value=""></c:set>
                            <c:set var="cate3Url" value="${rootPath}/resource/${nowCate2.cid}/1"></c:set>

                            <c:if test="${nowCate1==null}">
                                <c:set var="selectedOfClass31" value="select-all selected"></c:set>
                                <c:set var="cate3Url" value="${rootPath}/resource/course"></c:set>
                            </c:if>
                            <c:if test="${nowCate2==null}">
                                <c:set var="selectedOfClass31" value="select-all selected"></c:set>
                                <c:set var="cate3Url" value="${rootPath}/resource/${nowCate1.cid}/1"></c:set>
                            </c:if>
                            <c:if test="${nowCate3==null}">
                                <c:set var="selectedOfClass31" value="select-all selected"></c:set>
                                <c:set var="cate3Url" value="${rootPath}/resource/${nowCate2.cid}/1"></c:set>
                            </c:if>

                            <dd class="${selectedOfClass31}"><a href="${cate3Url}">全部</a></dd>

                            <c:if test="${nowCate1==null}">
                                <c:forEach items="${allOfCate3}" var="allcate3" begin="6" end="56">
                                    <dd><a href="${rootPath}/resource/${allcate3.cid}/1">
                                            ${allcate3.cateName}</a></dd>
                                </c:forEach>
                            </c:if>

                            <c:if test="${nowCate2==null && nowCate1!=null}">
                                <c:forEach items="${allOfCate3OfNowCate1}" var="allcate3" begin="6" end="56">
                                    <dd><a href="${rootPath}/resource/${allcate3.cid}/1">
                                            ${allcate3.cateName}</a></dd>
                                </c:forEach>
                            </c:if>

                            <c:forEach items="${cate3s}" var="cate3">
                                <c:if test="${nowCate3.cid == cate3.cid}">
                                    <c:set var="selectedOfClass32" value="select-all selected"></c:set>
                                </c:if>
                                <dd class="${selectedOfClass32}"><a href="${rootPath}/resource/${cate3.cid}/1">
                                        ${cate3.cateName}</a></dd>
                                <c:set var="selectedOfClass32" value=""></c:set>
                            </c:forEach>
                        </dl>
                    </li>
                    <li class="select-result">
                        <dl>
                            <c:set var="selectResult" value="0"></c:set>
                            <dt>已选条件：</dt>

                            <c:if test="${nowCate1.cateName!='全部' && nowCate1!=null}">
                                <dd id="selectA" class="selected"><a href="">${nowCate1.cateName}</a></dd>
                                <c:set var="selectResult" value="1"></c:set>
                            </c:if>

                            <c:if test="${nowCate2.cateName!='全部' && nowCate2!=null}">
                                <dd id="selectB" class="selected"><a href="">${nowCate2.cateName}</a></dd>
                                <c:set var="selectResult" value="1"></c:set>
                            </c:if>

                            <c:if test="${nowCate3.cateName!='全部' && nowCate3!=null}">
                                <dd id="selectC" class="selected"><a href="">${nowCate3.cateName}</a></dd>
                                <c:set var="selectResult" value="1"></c:set>
                            </c:if>

                            <c:if test="${selectResult!='1'}">
                                <dd class="select-no">暂时没有选择过滤条件</dd>
                            </c:if>
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
                        <ul class="list-inline courses-sort">
                            <li>最热</li>
                            <li>最新</li>
                            <li>免费</li>
                        </ul>
                    </div>

                    <div class="floor">
                        <ul>
                            <c:forEach items="${resources}" var="course">
                                <li>
                                    <div class="image">
                                        <img src="${course.imgurl}" alt="${course.url}"/>
                                    </div>
                                    <div class="title"><a href="${course.url}">${course.title}</a></div>
                                        <%--<div class="price">${coursepage1.price}</div>--%>
                                    <c:if test="${course.joinNumber!='0'}">
                                        <div class="add pull-left">学习人数</div>
                                        <div class="people pull-right">${course.joinNumber}</div>
                                    </c:if>
                                    <c:if test="${course.collection!='0'}">
                                        <div class="add pull-left">收藏人数</div>
                                        <div class="people pull-right">${course.collection}</div>
                                    </c:if>
                                    <c:if test="${course.satisfaction!='0'}">
                                        <div class="add pull-left">满意度</div>
                                        <div class="people pull-right">${course.satisfaction}</div>
                                    </c:if>

                                    <div class="clearfix"></div>
                                    <div class="line"></div>
                                    <div class="src">课程来源： ${course.sourceWeb}</div>

                                    <a href="#CollectModal" role="button" data-toggle="modal"><i class="fa fa-star collect active" title="取消收藏"></i></a>
                                </li>
                            </c:forEach>

                            <div class="clearfix"></div>
                        </ul>
                    </div>


                </div>
                <nav>
                    <ul class="pagination pull-right">
                        <li><a href="#">上一页</a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#">下一页</a>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </nav>
            </div>

        </div>

    </div>
</div>


<jsp:include page="common/footer.jsp" />

<!--CommonDiv-->
<!--取消收藏模态-->
<div class="modal small fade" id="CollectModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h3 id="myModalLabel">消息</h3>
            </div>
            <div class="modal-body">
                <p class="error-text"><i class="fa fa-warning modal-icon"></i><span class="pull-right">取消收藏?</span><div class="clearfix"></div></p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-default" data-dismiss="modal" aria-hidden="true">取消</button>
                <button class="btn btn-danger" data-dismiss="modal">确定</button>
            </div>
        </div>
    </div>
</div>

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