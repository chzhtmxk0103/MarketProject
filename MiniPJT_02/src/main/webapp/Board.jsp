<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>

<style type="text/css">

ul{
	list-style: none;
}
div{
	display: flex;
	height: 100vh;
	justify-content: center;
	align-items: center;

}
form{
	 border:1px solid; padding:30px;
}

</style>

</head>
<body>

<%
	String categorie = request.getParameter("categorie");
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String writedate = request.getParameter("writedate");
	String content = request.getParameter("content");
%>

<div>
	<form>
		<ul>
			<li>카테고리 : <%=categorie%></li>
			<li>제목 : <%=title%></li>
			<li>작성자 : <%=writer%></li>
			<li>날짜 : <%=writedate%></li>
			<li>내용 : <%=content%></li>
		</ul>
		<input type="button" value="메인으로" onclick="location.href='Index.html'">
	</form>
</div>

</body>
</html>