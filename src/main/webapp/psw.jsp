<%--
  Created by IntelliJ IDEA.
  User: 刘雨轩
  Date: 19/9/5
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ChangePassWrold</title>
    <link href="https://cdn.bootcss.com/twitter-bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $("#btn").click(function () {
                var str1 = $("#new").val();
                var str2 = $("#again").val();
                if(str1!==str2){
                    alert("两次输入密码不一致")
                }
            })
        })
    </script>
</head>
<body style="background: url(https://cn.bing.com/th?id=OHR.Tegallalang_ZH-CN1855493751_1920x1080.jpg&rf=LaDigue_1920x1080.jpg&pid=hp) no-repeat center center fixed; background-size: 100%;">
<form action="${pageContext.request.contextPath}/modify" method="get">
    <div class="modal-dialog" style="margin-top: 10%;">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title text-center" id="myModalLabel">修改密码</h4>
            </div>
            <div class="modal-body" id = "model-body">
                <div class="form-group">
                    <input type="text" name="name" id="name" class="form-control" placeholder="用户名" autocomplete="off">
                </div>
                <div class="form-group">
                    <input type="text" name="idcard" id="idcard" class="form-control" placeholder="身份证后六位" autocomplete="off">
                </div>
                <div class="form-group">
                    <input type="password" name="new" id="new" class="form-control" placeholder="新密码" autocomplete="off">
                </div>
                <div class="form-group">

                    <input type="password" name="again" id="again" class="form-control" placeholder="再次输入" autocomplete="off">
                </div>
            </div>
            <div class="modal-footer">
                <div class="form-group">
                    <button type="submit" id="btn" class="btn btn-primary form-control">确定</button>
                </div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</form>
</body>
</html>

