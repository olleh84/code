<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="st" class="my.student.StudentDAO"></jsp:useBean>
<%
	//1. 사용자가 입력한 값 받아오자.
	String name = request.getParameter("name");
	//2. 유효성 체크
	if(name == null || name.trim().equals(""))
	{
		%>
		<script>
			alert("아름을 입력해주세요.");
			location.href="student2.jsp";
		</script>
		<%
		return;
	}
	// 비즈니스 메서드 호출
	int result = st.deleteStudent(name.trim());
	if(result > 0)
	{
		%>
		<script>
			alert("삭제되었습니다.");
			location.href="student2.jsp";
		</script>
		<%
	}
	else
	{
		%>
		<script>
			alert("삭제되지 않았습니다.");
			location.href="student2.jsp";
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