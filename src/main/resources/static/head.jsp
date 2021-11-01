<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <base href="http://${header['host']}${cpath}/">
    <title>登录</title>
    <link href="${cpath}/css/style.css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"/>
    <style type="text/css">
        <!--
        .style1 {
            font-family: "宋体"
        }

        .style2 {
            font-size: 9px
        }

        .style3 {
            color: #9999CC;
            text-decoration: none;
            font-family: "宋体";
        }

        .style4 {
            font-size: 9pt
        }

        .style5 {
            color: #999999
        }

        .style6 {
            font-family: "宋体";
            color: #999999;
        }

        .style7 {
            color: #FF0000
        }

        .style8 {
            font-family: Tahoma
        }

        a.rights:link {
            COLOR: #000000;
            TEXT-DECORATION: none;
        }

        a.rights:visited {
            COLOR: #000000;
            TEXT-DECORATION: none;
        }

        a.rights:hover {
            COLOR: #FF0000;
            TEXT-DECORATION: none;
        }

        .style9 {
            font-size: 9pt;
            color: #FF0000;
            font-weight: bold;
        }

        -->
    </style>
</head>
<body background="img/beijing.gif" text="#000000" leftmargin="0"
      topmargin="0" marginwidth="0" marginheight="0">

<table width="700" height="150" border="0" align="center" cellpadding="0" cellspacing="0"
       class="tittle0">
    <tr>
        <td width="100%" background="img/toplogo.png">&nbsp;</td>
    </tr>
</table>

<table width="700" border="0" align="center" cellpadding="0"
       cellspacing="0" class="tittle1" background="img/bg.gif">
    <tr>
        <td height="26" background="img/bg.gif">
            <table width="100%" height="15" border="0" cellpadding="0"
                   cellspacing="0">
                <tr align="center">
                    <td width="20%" class="font0"><span class="font0">版主：</span>
                        <font color="#006699">admin </font></td>
                    <td align="right">
                    <c:if test="${sessionScope.user != null}">
                        <a href="saveMes.jsp" class="font0">给我留言</a>
                    </c:if>
                    <c:if test="${sessionScope.user == null}">
                        <span class="font0">│</span> <a href="login.jsp" class="font0">用户登录</a>
                        <span class="font0">│</span> <a href="register.jsp" class="font0">用户注册</a>
                    </c:if>
                    <c:if test="${sessionScope.user != null}">
                            <span class="font0">│</span> <a href="${pageContext.request.contextPath}/modify.jsp"
                                                            class="font0">修改信息</a>
                            <span class="font0">│</span> <a href="${pageContext.request.contextPath}/toShowMes"
                                                            class="font0">留言列表</a>
                            <span class="font0">│</span> <a href="${pageContext.request.contextPath}/Login.quit"
                                                            class="font0">退出登录</a>
                    </c:if>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<table width="650" border="0" align="center" cellpadding="0"
       cellspacing="0">
    <tr>
        <td height="40" align="center" valign="middle">
            <table width="100%" border="0" align="center" cellpadding="0"
                   cellspacing="0">
                <tr>
                    <td width="4%" align="right"><img src="img/fav_add.gif"
                                                      width="25" height="25"></td>
                    <td valign="bottom">
                        <p>
                            <marquee height=20 hspace=5 loop=100 scrollamount=2
                                     scrolldelay=10 on="left" DIRECTI align="center">
                                <span class="style9">大家好！ </span>
                            </marquee>
                        </p>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>