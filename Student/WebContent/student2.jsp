<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert</title>
<style type="text/css">
	body
	{
		
	}
</style>
</head>
<body>
<center>
<hr />
<h2>학생등록페이지2</h2>
<hr />
<!-- <form action="insert2.jsp" method="get"> -->
	<form action="insert3.jsp" method="get">
	<table border="1">
		<tr>
			<td>
		 		아이디 : <input type="text" name="id"> 
	 		</td>
		</tr>
		<tr>
			<td>
				이  름 : <input type="text" name="name">
			</td>
		</tr>
		<tr>
			<td>
				학  급 : <input type="text" name="cname">
			</td>
		</tr>
		<tr>
			<td>
				<input type="submit" value="등록">
		 		<input type="reset" value="취소">
			</td>
		</tr>	 
	</table>
</form>
<hr />
<h2>학생검색페이지2</h2>
<hr />
<form action="find2.jsp">
	검색할사람 이름 : <input type="text" name="name">
	<input type="submit" value="검색">
</form>
<hr />
<h2>학생삭제페이지2</h2>
<form action="delete2.jsp">
	삭제할사람 이름 : <input type="text" name="name">
	<input type="submit" value="삭제">
</form>
<hr />
<h2>학생목록페이지2</h2>
<a href="list2.jsp">List</a>
</center>
</body>
</html>
<!-- 빈즈 작성 
1> StudentDTO.java(DB Connect) - DB레코드를 Object화
2> StudentDAO.java(insert,select.....) - DB에 접근하여 insert,delete,select등의 
									업무처리로직(비즈니스로직)을 수행하는 클래스
-->