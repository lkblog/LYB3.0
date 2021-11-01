<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.Map" %>
<%@ page import="cn.edu.nsu.bean.UserBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改用户信息</title>
</head>
<body>
	<jsp:include page="head.jsp" />
	<%
		String mes = request.getParameter("wrongmes");
	%>

	<FORM action="${pageContext.request.contextPath}/headImgUpload" method="post" enctype="multipart/form-data">
			<input type="hidden" value="${sessionScope.user.userID}" name = "userId">
		<div align="center">
			<tr><input type="file" name="headImg"></tr>
			<tr><input type="submit" value="头像上传"></tr>
		</div>
	</FORM>
	<form action="${pageContext.request.contextPath}/users/modify" method="POST" onsubmit="return check()">
		<table width="650" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td><img src="img/top1.gif" height="22" width="81"></td>
				<td width="522" background="img/top2.gif">&nbsp;</td>
				<td width="47"><img src="img/top3.gif" width="47"></td>
			</tr>

			<tr>
				<input type="hidden" name="userID" value="${sessionScope.user.userID}">
				<td colspan="3" height="162">
					<table width="100%" border="0" cellpadding="2" cellspacing="2"
						align="center" class="tittle1">
						<tr>
							<td width="40%" height="21" align="right"><font
								color="#000099"> <img src="img/topicnew.png" width="15"
									height="19" style="vertical-align: middle;"> <span
									class="font0" >姓名：</span>
							</font></td>
							<td width="60%" height="30"><input name="userName" type="text"
								id="name" value="${sessionScope.user.userName}"
								style="border: 1px double rgb(187, 185, 185); font: 9pt" /></td>

						</tr>
						<tr>
							<td width="40%" height="21" align="right"><font
								color="#000099"> <img src="img/topicnew.png" width="15"
									height="19" style="vertical-align: middle;"> <span
									class="font0">密码：</span>
							</font></td>
							<td width="60%" height="30"><input name="password"
								type="password" id="password" value="${sessionScope.user.password}"
								style="border: 1px double rgb(187, 185, 185); font: 9pt" /></td>

						</tr>
						<tr>
							<td align="right"><font color="#000099"> <img
									src="img/topicnew.png" width="16" height="18"
									style="vertical-align: middle;"> <span class="font0">
										性别：</span>
							</font></td>
							<td height="30">
								<span class="font0">男孩</span>
								<input type="radio" name="sex" value="0" <c:if test="${sessionScope.user.sex eq '0'}">checked</c:if>>
								<span class="font0">女孩</span>
								<input type="radio" name="sex" value="1" <c:if test="${sessionScope.user.sex eq '1'}">checked</c:if>>
							</td>
						</tr>
						<tr>
							<td height="21" align="right"><font color="#000099">
									<img src="img/topicnew.png" width="16" height="18"
									style="vertical-align: middle;"> <span class="font0">
										QQ：</span>
							</font></td>
							<td height="30"><input name="qq" type="text" id="qq" value="${sessionScope.user.qq}"
								style="border: 1px double rgb(187, 185, 185); font: 9pt">
							</td>
						</tr>
						<tr>
							<td height="21" align="right"><font color="#000099">
									<img src="img/topicnew.png" width="16" height="18"
									style="vertical-align: middle;"> <span class="font0">Email：</span>
							</font></td>
							<td height="30"><input name="email" type="text" id="email" value="${sessionScope.user.email}"
								style="border: 1px double rgb(187, 185, 185); font: 9pt">
							</td>
						</tr>
						
						<%
							if (mes != null) {
						%>
						<tr>
							<td height="21" colspan="2" align="center"><span
								class="font0" style="color: red"><%=mes%> </span></td>
						</tr>
						<%}%>
						<tr>
							<td height="21" colspan="2" align="center"><span
									class="font0"><input type="submit" value="修改" /> <input
									type="reset" /></span></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<table border="0" width="650" cellspacing="0" cellpadding="0"
						height="7" align="center">
						<tr>
							<td width="2%" align="center"><img src="img/end1.gif"
								width="12" height="14"></td>
							<td width="89%" align="center" background="img/end2.gif"></td>
							<td width="9%" align="center"><img src="img/end3.gif"
								width="65" height="14"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>
