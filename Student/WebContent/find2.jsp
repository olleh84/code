<%@page import="my.student.StudentDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="st" class="my.student.StudentDAO"></jsp:useBean>
<%
	//1. 검색할 사람이름 받아오기
	String name = request.getParameter("name");
	//2. 유효성 체크
	if(name == null || name.trim().equals(""))
	{
		%>
		<script>
			alert("이름을 입력하세요.");
			history.back();
		</script>
		<%
		return;
	}
	StudentDTO arr[] = st.findStudent(name.trim());
	if(arr == null || arr.length == 0)
	{
		out.println(name + "님 정보가 없습니다.");
		out.println("<br /><a href='student2.jsp'>돌아가기</a>");
		return;
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
	<hr />
		<h2>학생목록페이지</h2>
	<hr />
	<table border="1" width="500">
		<tr bgcolor="silver">
			<th width="30%">아이디</th>		
			<th>이름</th>
			<th>학급</th>
		</tr>
		
		<% 
			// 확장 for루프 5.0이상부터 지원
			// arr배열에 있는 애를 하나씩 뽑아줌
			for(StudentDTO dto: arr)
			{
		%>
		<tr>
			<td><%= dto.getId() %></td>
			<td><%= dto.getName() %></td>
			<td><%= dto.getCname() %></td>
		</tr>
		<%	} %>
	</table>
	<a href="student2.jsp">등록</a>||
	<a href="find2.jsp">검색</a>
	</center>
</body>
</html>