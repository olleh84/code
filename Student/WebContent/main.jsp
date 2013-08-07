<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<%@ include file="top.jsp" %>
Welcome
	<ul>
		<li>
			<a href="student.jsp">
				학생등록 페이지1
			</a>
		</li>
		<li>
			<a href="student2.jsp">
				학생등록 페이지2
			</a>[빈즈를 사용]
		</li>
		<li>
			<a href="beanscope/test1.html">
				[빈즈 스코프 테스트]
			</a>[page]
		</li>
		<li>
			<a href="beanscope/test2.html">
				[빈즈 스코프 테스트]
			</a>[request]
		</li>
		<li>
			<a href="beanscope/test3.html">
				[빈즈 스코프 테스트]
			</a>[session]
		</li>
		<li>
			<a href="beanscope/test4.html">
				[빈즈 스코프 테스트]
			</a>[application]
		</li>
	</ul>
<%@ include file="bottom.jsp" %>
</body>
</html>