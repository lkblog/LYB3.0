<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%--<%@ include file="head.jsp"%>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<jsp:include page="head.jsp" />
	<table width="309" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="309">
				<form method="POST" action="${pageContext.request.contextPath}/Login.do">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="9%"><img src="img/TT_left.gif" width="37"
											height="31"></td>
										<td width="82%" valign="bottom" background="img/TT_back.gif"
											class="font0"><font color="#FFFFFF">登录留言板</font></td>
										<td width="9%"><img src="img/TT_r.gif" width="26"
											height="31"></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="108" valign="top">
								<table width="100%" border="0" align="center" cellpadding="0"
									cellspacing="1" class="tittle4">
									<tr>
										<td width="32%" height="28" align="center" bgcolor="#F5F5F5"
											class="font0">用户名：</td>
										<td width="68%" height="40" bgcolor="#F5F5F5"><input
											type="text" name="UserName" value=""
											style="border: 1px double rgb(187, 185, 185); font: 9pt">
										</td>
									</tr>
									<tr>
										<td height="40" align="center" bgcolor="#FFFFFF" class="font0">密码：</td>
										<td height="40" bgcolor="#FFFFFF"><input type="Password"
											name="password"
											style="border: 1px double rgb(187, 185, 185); font: 9pt">
										</td>
									</tr>
									<tr>
										<td colspan="2" align="center" style="color: red">
											${Mes}
										</td>
									</tr>
									<tr bgcolor="#F5F5F5">
										<td height="30" colspan="2" align="center" valign="middle">
											<input type="submit" value="登录"
											style="border: 1 solid #BBB9B9; background: #ffffff"
											class="button"> <input type="button" value="注册"
											onclick="javascript:window.location.href='register.jsp'"
											style="border: 1 solid #BBB9B9; background: #ffffff"
											class="button">
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>