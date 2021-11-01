<%@ page import="java.sql.*"%>
<%@ page import="cn.edu.nsu.bean.UserBean" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.net.Inet4Address" %>
<%@ page import="java.net.InetAddress" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言</title>
</head>

<body>
	<jsp:include page="head.jsp" />
	<%Date date = new Date();SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");%>
	<%InetAddress ip = Inet4Address.getLocalHost();%>
	<form action="${pageContext.request.contextPath}/saveMes" method="POST" name="form" id="form"
		onsubmit="return check()">
		<input type="hidden" value="${sessionScope.user.userID}" name="userid">
		<input type="hidden" value="<%= formatter.format(date)%>" name="savetime">
		<input type="hidden" value="<%= ip.getHostAddress()%>" name="ip">
		<table width="650" border="0" cellspacing="0" cellpadding="0"
			align="center">
			<tr>
				<td valign="top" bgcolor="#FFFFFF">
					<table width="100%" border="0" cellpadding="0" cellspacing="0"
						class="tittle3">
						<tr>
							<td width="12%"><img src="img/top1.gif" width="81"
								height="22"></td>
							<td width="86%" background="img/top2.gif">&nbsp;</td>
							<td width="2%"><img src="img/top3.gif" width="47"
								height="22"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr valign="middle">
				<td height="162" width="650">
					<table width="100%" border="0" cellpadding="0" cellspacing="0"
						class="tittle1">
						<tr>
							<td valign="top"><font color="#000099"> <img
									src="img/shareforum.gif" width="25" height="25"
									style="vertical-align: middle;"> <span class="font0">留言标题：</span>
							</font><input name="title" type="text" id="title"
								style="border: 1px double rgb(187, 185, 185); font: 9pt">
								<font color="#FF0000">*</font></td>
						</tr>
						<tr>
							<td><font color="#000099"> <img
									src="img/shareforum.gif" width="25" height="25"
									style="vertical-align: middle;"> <span class="font0">留言内容：</span>
							</font><font color="#FF0000">*</font></td>
						</tr>
						<tr>
							<td align="center" width="100%"><textarea name="content"
									rows="5" id="content"
									style="border: 1px double rgb(187, 185, 185); font: 9pt; width: 98%"></textarea>
							</td>
						</tr>

						<tr>
							<td align="center"><input type="submit" name="Submit"
								value="提交留言"
								style="border: 1 solid #BBB9B9; background: #ffffff"
								class="button"> <input type="reset" name="Submit2"
								value="取消重写"
								style="border: 1 solid #BBB9B9; background: #ffffff"
								class="button"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr valign="top">
				<td>
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
	<br>
	<table width="650" border="0" align="center" cellpadding="0"
		cellspacing="1" class="tittle0">
		<tr>
			<td height="28" align="center" background="img/bg.gif" class="font0">欢迎使用留言板</td>
		</tr>
	</table>
</body>
</html>

















