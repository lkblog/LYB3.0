<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; chamessageet=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="cn.edu.nsu.bean.UserBean" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; chamessageet=UTF-8">
<title>留言板</title>

</head>
<body background="img/beijing.gif" text="#000000" leftmargin="0"
	topmargin="0" marginwidth="0" marginheight="0">
<jsp:include page="head.jsp" />
	<c:forEach var="a_Mes" items="${allMes}">
	<table width="700" border="0" cellspacing="0" cellpadding="0"
		align="center" style="word-break: break-all">
		<tr>
			<td><img src="img/top1.gif" width="81" height="22"></td>
			<td><img src="img/top2.gif" width="572" height="22"></td>
			<td><img src="img/top3.gif" width="47" height="22"></td>
		</tr>
		<tr>
			<td colspan="3" align="center" bgcolor="#FFFFFF" class="tittle2">
				<table width="100%" height="28" border="0" cellpadding="0"
					cellspacing="0" background="img/bg.gif" class="tittle3">
					<tr>
						<td width="42%" align="left" height="18" style="font-size: 11pt"><img src="img/topicnew.png"
							>${a_Mes.title}</td>
						<td width="30%"><span class="style2"><span
								class="style4"><span class="style7">${a_Mes.userName}<span
										style="font-family: &amp; amp;" invalid_attr_id="none"></span></span><span
									class="style3">留言于</span><font color="#000099"><font
										color="#FF0000">${a_Mes.title}&nbsp;&nbsp;</font></font></span></span></td>
						<td width="18%"><span class="style4"><font
								color="#000099">IP:</font><font color="#FF0000"></font></span>
						</td>
						<td width="3%"><a href="http://" target="_blank"> <img
								src="img/icon_homepage.gif" alt="six的主页" width="16" height="16"
								border="0">
						</a></td>
						<td width="3%"><a
							href="https://find.qq.com/"
							target="_blank"> <img src="img/icon_editor_oicq.gif"
								alt="six的QQ是：" width="16" height="16" border="0">
						</a></td>
						<td width="3%"><a href="mailto:"> <img
								src="img/icon_email.gif" alt="six的Email是：" width="16"
								height="16" border="0">
						</a></td>
						<c:if test="${a_Mes.userid eq sessionScope.user.userID}">
							<td width="3%"><a href="#"> <img
									src="img/icon_reply_topic.gif" width="16" height="16" border="0"
									alt="回复该留言[只有版主才有的权利]">
							</a></td>

							<td width="3%"><a href="editMes.jsp?mesID=${a_Mes.mesID}"> <img
									src="img/icon_edit_topic.gif" width="16" height="16" border="0"
									alt="编辑该留言[只有版主才有的权利]">
							</a>
							</td>
							<td width="3%"><a href="${pageContext.request.contextPath}/delMes?mesID=${a_Mes.mesID}"> <img
									src="img/icon_delete_reply.gif" alt="删除该留言[只有版主才有的权利]"
									width="16" height="16" border="0">
							</a>
							</td>
						</c:if>
					</tr>
					<tr>
					</tr>
				</table>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="100" height="92" align="center" valign="top">
							<table width="100%" border="0" cellspacing="3" cellpadding="0">
								<tr>
									<td align="center"><img src="${a_Mes.headUrl}" height="70" width="70"></td>
								</tr>
								<tr>
									<td align="center"><span class="style4"></span></td>
								</tr>
							</table>
						</td>
						<td width="423"><span class="style4">${a_Mes.content}</span></td>
					</tr>
					<tr align="center">
						<td colspan="2" valign="top"><img src="images/bg_4.gif"
							width="100%" height="1"></td>
					</tr>
					<tr>
						<td colspan="2" height="20"><font color="#006699"> <img
								src="img/locktop.gif" width="15" height="15" align="absmiddle">
						</font> <span class="font0"><span class="style1">版主回复：<span
									class="style6"></span></span><span class="style5"></span></span></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</c:forEach>

	<table border="0" width="650" cellspacing="0" cellpadding="0"
		height="7" align="center">
		<tr>
			<td align="center"><img src="img/end1.gif" width="12"
				height="14"></td>
			<td align="center"><img src="img/end2.gif" width="623"
				height="14"></td>
			<td align="center"><img src="img/end3.gif" width="65"
				height="14"></td>
		</tr>
	</table>
	<p>

</body>
</html>





