<%--
  Created by IntelliJ IDEA.
  User: 10842
  Date: 2021/5/24
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form class="form-horizontal" >
    <label>用户名</label>
    <div>
        <input type="text" id="username" placeholder="请输入用户名">
    </div>
    <div>
        <button type="button" id="select">查找</button>
    </div>

</form>
<div class="panel-body">
    <h2 class="text-danger text-center">
        <!-- 用来显示查找结果 -->
        <span class="glyphicon" id="select-box"></span>
    </h2>
</div>
</body>
<script>
    // $(function (){
    //     $("#login").click(function (){
    //         $.ajax({
    //             type: "POST",
    //             url : "/jsonTest",
    //             dataType : "json",
    //             contentType : "application/json;charset=UTF-8",
    //             data : {
    //                 "username": $.username.val(),
    //                 "password" : $.password.val()
    //             },
    //             success : function (msg,status){
    //                 alert("提交成功")
    //             }
    //         });
    //     });
    // });
    $(function(){
        $("#select").click(function() {
            $.ajax({
                url : "/jsonTest",
                type : "POST",
                dataType:"json",
                contentType : "application/json;charset=UTF-8",
                <!-- 向后端传输的数据 -->
                data : JSON.stringify({
                    id : $("#username").val(),
                }),
                success:function(result) {
                    <!-- 处理后端返回的数据 -->
                    var message= JSON.stringify(result);
                    $("#select-box").html("查询成功" + message);
                },
                error:function(result){
                    $("#select-box").html("查询失败");
                }
            });
        });
    });
</script>
</html>
