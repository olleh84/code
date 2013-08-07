<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- StudentDAO 객체가 하나 자동으로 생성됨  -->
<jsp:useBean id="st" class="my.student.StudentDAO" />
<%
	//1. 사용자가 입력한 값 받기
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String cname = request.getParameter("cname");
	
	//2. 유효성 체크 (DB에 not null제약조건 걸었으니)
	if(id == null || name == null || cname == null)
	{
		response.sendRedirect("student2.jsp");
		return; // 반드시
	}
	
	// st : Bean's id
	int result = st.insertStudent(id, name, cname);
	if(result > 0)
	{
		%>
		<script>
			alert("저장되었습니다.");
			location.href="list2.jsp";
		</script>
		<%
	}
	else
	{
		%>
		<script>
			alert("실패하였습니다.");
			location.href="list2.jsp";
		</script>
		<%
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>