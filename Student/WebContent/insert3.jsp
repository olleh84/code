<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="stdto" class="my.student.StudentDTO"></jsp:useBean>

<!-- 모든 셋계열 메서드 한번에  property="*" 단 폼컨트롤 name과 dto필드명 이 동일해야함 -->
<jsp:setProperty property="*" name="stdto"/>

<!-- 프로퍼티를 따로 준다면.. 아래 두개는 같은 코드 -->
<%-- <jsp:setProperty property="id" name="stdto"/>
<% stdto.setId(request.getParameter("id")); %> --%>

<!-- useBean 의 id속성값은 참조변수 -->
<jsp:useBean id="st" class="my.student.StudentDAO"></jsp:useBean>
<%
	int result = st.insertStudent(stdto);
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
			alert("실패하였습니다..");
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