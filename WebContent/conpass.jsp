<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>

<%
	int num = Integer.parseInt(request.getParameter("no"));
	
	GuestDao guestDao = new GuestDao();
	GuestVo guestVo = new GuestVo();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="./delete.jsp" method="get">
		비밀번호 <input type="password" name="password">
		<input type="hidden" name="no" value="<%=num%>">
		<button type="submit" onclick="location.href='delete.jsp?no=<%=num %>&?password=<%=guestVo.getPassword() %>' " >확인</button>
		<!-- 요청은 한 번 보내주면 끝 다시 요청을 보내야한다 -->
		<br>
	</form>
	<a href="./addList.jsp">메인으로 돌아가기</a>
</body>
</html>