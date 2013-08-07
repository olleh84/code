<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="my.student.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="st" class="my.student.StudentDAO"></jsp:useBean>
<%
	// 모든 학생 정보 보기
	StudentDTO[] arr = st.selectAll();
	if(arr ==null || arr.length == 0)
	{
		out.println("아직 등록된 학생이 없습니다.");
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
	<h2>학생목록페이지2</h2>
<hr />
<table border="1" width="500">
	<tr bgcolor="silver">
		<th width="30%">아이디</th>		
		<th>이름</th>
		<th>학급</th>
	</tr>
	
	<!-- -------------------------------- -->
	<%
		for(int i = 0; i< arr.length; i++)
		{
			String vid = arr[i].getId();
			String vname = arr[i].getName();
			String vcname = arr[i].getCname();
	%>
	<tr>
		<td><%= vid %></td>
		<td><%= vname %></td>
		<td><%= vcname %></td>
	</tr>	
	<!-- -------------------------------- -->
	<%
		}
	%>
</table>
<a href="student2.jsp">등록</a>||
<a href="student2.jsp">검색</a>
</center>
</body>
</html>