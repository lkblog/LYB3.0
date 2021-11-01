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
		String userid = (String) session.getAttribute("userid");
		if (userid == null) {
			response.sendRedirect("login.jsp");
			return;
		}
		String sql = "insert into message(title,content,userid,savetime,ip) values(?,?,?,?,?);";
		PreparedStatement pstmt = con.prepareStatement(sql);
		String name = request.getParameter("title");
		String content = request.getParameter("content");
		Timestamp savetime = new Timestamp(System.currentTimeMillis());
		pstmt.setString(1, name);
		pstmt.setString(2, content);
		pstmt.setInt(3, Integer.parseInt(userid));
		pstmt.setTimestamp(4, savetime);
		pstmt.setString(5, request.getRemoteAddr());
		pstmt.execute();
		response.sendRedirect("showMes.jsp");
	%>
</body>
</html>













