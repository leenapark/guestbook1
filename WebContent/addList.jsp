<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.GuestDao" %>
<%@ page import="com.javaex.vo.GuestVo" %>

<%
	GuestDao guestDao = new GuestDao();	
	List<GuestVo> guestList = guestDao.addList();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./add.jsp" method="get">
		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan="4"><textarea cols="65" rows="10" name="content"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button type="submit">확인</button>
			</tr>
			
		</table>
	</form>
	<br>
	
	<!-- 데이터 불러오기 -->
	
	<%for(int i=0; i<guestList.size(); i++) { %>
		<table border="1">
			<tr>
				<td><%=guestList.get(i).getNo() %></td>
				<td><%=guestList.get(i).getName() %></td>
				<td><%=guestList.get(i).getRegDate() %></td>
				<td><a href="./conpass.jsp?no=<%=guestList.get(i).getNo() %>">삭제</a></td>
				<!-- request.getParameter("no") => no=guestList.get(i).getNo() no값을 준다  -->
			</tr>
			<tr>
				<td colspan="5"><%=guestList.get(i).getContent() %></td>
			</tr>
		</table>
		<br>
	<%} %>
	
</body>
</html>