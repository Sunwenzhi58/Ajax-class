<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2023/6/20
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/xml;charset=UTF-8" language="java" %>

 <%
     request.setCharacterEncoding("UTF-8");
     String pro= request.getParameter("province");
     if(pro.equals("山西")){
         out.print("<province><city>太原</city><city>大同</city><city>阳泉</city></province>");
     }
     else if (pro.equals("河北")){
         out.print("<province><city>石家庄</city><city>邢台</city><city>保定</city></province>");
     }
     else {
         out.print("<province><city></city></province>");
     }
 %>

