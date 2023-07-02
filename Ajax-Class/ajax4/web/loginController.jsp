<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2023/6/30
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    request.setCharacterEncoding("utf-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    System.out.println(username);
    if(password.equals("123")) {
        session.setAttribute("loginuser", username); response.sendRedirect("friendList.jsp");
    }else
        response.sendRedirect("login.jsp");
%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
</body>
</html>