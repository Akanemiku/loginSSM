<%--
  Created by IntelliJ IDEA.
  User: 刘雨轩
  Date: 19/7/22
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body style="background: url(https://cn.bing.com/th?id=OHR.GuaitaTower_EN-CN7249728979_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp) no-repeat center center fixed; background-size: 100%;">
<form action="${pageContext.request.contextPath}/login" method="post">
    <div class="modal-dialog" style="margin-top: 10%;">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title text-center" id="myModalLabel">登录</h4>
            </div>
            <div class="modal-body" id="model-body">
                <div class="form-group">
                    <input type="text" name="name" class="form-control" placeholder="用户名" autocomplete="off">
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="密码" autocomplete="off">
                </div>
                <div class="form-group">
                    <%
                        if (session.getAttribute("unlogin") != null) {
                    %>
                    <button type="button" class="btn btn-default btn-danger disabled btn-block"><%=session.getAttribute("unlogin")%></button>
                    <%
                        }
                    %>
                </div>
            </div>
            <div class="modal-footer">
                <div class="form-group">
                    <button type="submit" class="btn btn-primary form-control">登录</button>
                </div>
                <div class="form-group">
                    <a href="psw.jsp">
                        <button type="button" class="btn btn-default btn-block">忘记密码</button>
                    </a>
                </div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</form>
</body>
</html>
