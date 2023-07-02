<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.*"%>
<%
  String[] city = request.getParameterValues("city");
  String res = "[";
  System.out.println(city[0]);
  System.out.println((int)(Math.random()*1000+500));
//out.println("[{'price':'"+(int)(Math.random()*1000+500)+"'},{'price':'"+(int)(Math.random()*1000+500)+"'},{'price':'"+(int)(Math.random()*1000+500)+"'}]");
  for(int i=0; i<city.length; i++){
    if(i<city.length-1)
      res += "{'price':'"+(int)(Math.random()*500+500)+"'}," ;
    else
      res += "{'price':'"+(int)(Math.random()*500+500)+"'}]";
  }
  out.println(res);%>
