<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%--
  Created by IntelliJ IDEA.
  User: 刘雨轩
  Date: 19/9/3
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row-fluid">
        <div class="span12">
            <div class="page-header">
                <h1>登录成功 <small>登录历史</small></h1>
            </div>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>记录ID</th>
                    <th>用户ID</th>
                    <th>登录时间</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${recordList}" var="info">
                    <tr>
                        <td>${info.recordId}</td>
                        <td>${info.userId}</td>
                        <td><fmt:formatDate value="${info.recordTime}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="col-md-12 column">
                <ul class="pagination pull-right">
                    <script>
                        /**
                         * 获得map传来的数据
                         * 需要用到request.setAttribute将map本身传进来
                         * jsp代码块内不能直接调用map的映射
                         * @type {string}
                         */
                        var page = "${map['page']}";
                        $(function(){
                            if(page=="1"){
                                $("#pre").addClass("disabled");
                                $("#pre_a").attr("href","#");
                            }
                        })
                    </script>
                    <li id="pre"><a id="pre_a" href="${pageContext.request.contextPath}/success?page=${page-1}&size=${size}">上一页</a></li>

                    <c:forEach begin="1" end="${totalNum}" step="1" var="i">
                        <li>
                            <a href="${pageContext.request.contextPath}/success?page=${i}&size=${size}">${i}</a>
                        </li>
                    </c:forEach>

                    <script>
                        var page = "${map['page']}";
                        var totalPage = "${map['totalNum']}";
                        $(function(){
                            if(page==totalPage){
                                $("#next").addClass("disabled");
                                $("#next_a").attr("href","#");
                            }
                        })
                    </script>
                    <li id="next"><a id="next_a" href="${pageContext.request.contextPath}/success?page=${page+1}&size=${size}">下一页</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
