<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2023/5/31
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

   <%
     String username = request.getParameter("username");
     if (username.equals("sunwenzhi")){
         out.print("用户名可用");
     }else {
         out.print("用户名不可用");
     }
   %>
