<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.GuestDao"%>
<%@ page import="com.javaex.vo.GuestVo"%>

<%
	

	int num = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");	
	
	/* 가져온 데이터 값 확인했음
	System.out.println("=======================");
	System.out.println(num);
	System.out.println("=======================");
	System.out.println("=======================");
	System.out.println(password);
	System.out.println("=======================");
	*/
	
	//데이터 베이스 연결
	GuestDao guestDao = new GuestDao();
	
	
	GuestVo vo = guestDao.getInfo(num);
	
	
	System.out.println("=======================");
	System.out.println(vo);
	System.out.println("=======================");
	
	


	
	//기존 패스워드와 비교
		if(vo.getPassword().equals(password)) {
			
			guestDao.guestDelete(num);
			/* 불러온 no 확인
			System.out.println("=======================");
			System.out.println("넘버" + num);
			System.out.println("=======================");
			*/
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