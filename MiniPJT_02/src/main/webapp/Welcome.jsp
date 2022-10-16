<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>

<%
	String name = request.getParameter("name");
	Date date = new Date();
	SimpleDateFormat sfdate = new SimpleDateFormat("yyyy MM dd");
	String birth = request.getParameter("birth");
	String nowdate = sfdate.format(date);
	String[] birtharr = birth.split("-");
	String[] nowdatearr = nowdate.split(" ");
%>

<%=name%>님 가입을 환영합니다. <br>
선택하신 스타일은 
<%if(request.getParameter("newstyle1")==null){
	out.println("");
	}else{
	String newstyle1 = request.getParameter("newstyle1");
	out.println(newstyle1);
	}
%>
<%if(request.getParameter("newstyle2")==null){
	out.println("");
	}else{
	String newstyle2 = request.getParameter("newstyle2");
	out.println(newstyle2);
	}
%><%if(request.getParameter("newstyle3")==null){
	out.println("");
	}else{
	String newstyle3 = request.getParameter("newstyle3");
	out.println(newstyle3);
	}
%><%if(request.getParameter("newstyle4")==null){
	out.println("");
	}else{
	String newstyle4 = request.getParameter("newstyle4");
	out.println(newstyle4);
	}
%>
이네요.
스타일대로 추천해드릴게요. <br>

<%
	if(Integer.parseInt(nowdatearr[0])-Integer.parseInt(birtharr[0])>=20){
		out.println("");
	}else if(Integer.parseInt(nowdatearr[0])-Integer.parseInt(birtharr[0])==19&&
			Integer.parseInt(nowdatearr[1])>=Integer.parseInt(birtharr[1])&&
			Integer.parseInt(nowdatearr[2])>Integer.parseInt(birtharr[2])){
		out.println("");	
	}else{
		out.println(name + "님은 청소년 회원이십니다.");
	}
%> <br>

<a href = "Index.html"> 홈으로 </a>

</body>
</html>