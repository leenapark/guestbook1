<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestDao"%>
<%@ page import="com.javaex.vo.GuestVo"%>

<%
	

	int num = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");	
	
	//데이터 베이스 연결
	GuestDao guestDao = new GuestDao();
	GuestVo guestVo = new GuestVo();
	
	
	//기존 패스워드와 비교
		if(password.equals(guestVo.getPassword())){
			
			guestDao.guestDelete(num);
			
			response.sendRedirect("./addList.jsp");
			
		}else{
			response.sendRedirect("./addList.jsp");
			}
	

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>