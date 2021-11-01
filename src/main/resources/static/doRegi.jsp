<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
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
		String username = request.getParameter("username");
		String userpwd = request.getParameter("pwd");
		String sex = request.getParameter("sex");
		String qq = request.getParameter("qq");
		String email = request.getParameter("email");
		Timestamp regitime = new Timestamp(System.currentTimeMillis());
		String sql = "select * from user where username='" + username + "'";
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next()) {
			String wrongMes = "用户名\"" + username + "\"已被使用！";
	%>
	<jsp:forward page="register.jsp">
		<jsp:param value="<%=wrongMes%>" name="wrongmes" />
	</jsp:forward>
	<%
		}
		sql = "insert into user(username,password,sex,qq,email,regitime,headurl) values (?,?,?,?,?,?,?);";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, username);
		pstmt.setString(2, userpwd);
		pstmt.setInt(3, Integer.parseInt(sex));
		pstmt.setString(4, qq);
		pstmt.setString(5, email);
		pstmt.setTimestamp(6, regitime);
		pstmt.setString(7, "header/" + sex + ".gif");
		pstmt.execute();
		response.sendRedirect("login.jsp");
	%>
</body>
</html>










