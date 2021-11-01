<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="conn.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("username");
		String userpwd = request.getParameter("userpwd");
		
		String wrongMes = null;
		String sql = "select * from user where username='" + name + "';";
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next()) {
			if (userpwd.equals(rs.getString("password"))) {
				session.setAttribute("userid", rs.getString("userid"));
				response.sendRedirect("showMes.jsp");
				return;
			} else {
				wrongMes = "密码输入错误！";
			}
		} else {
			wrongMes = "用户名输入错误！";
		}
	%>
	<jsp:forward page="login.jsp">
		<jsp:param value="<%=wrongMes%>" name="wrongmes" />
	</jsp:forward>
</body>
</html>













