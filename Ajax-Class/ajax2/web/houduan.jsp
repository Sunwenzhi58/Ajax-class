<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*"%>
 <%
 String[] citys =request.getParameterValues("city");
 String res = "[";
 for (int i=0;i<citys.length;i++){
    if(i<citys.length-1){
        res +="{'price':'"+(int)(Math.random()*500+500)+"'},";
    }else
        res +="{'price':'"+(int)(Math.random()*500+500)+"'},";
 }
 %>
