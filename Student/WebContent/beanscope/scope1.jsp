<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="obj" class="my.scope.CountBean" scope="page" />

<!-- property="멤버변수" name="useBean id" -->
<jsp:setProperty property="count" name="obj"/>

<h2>Page Scope</h2>
<b>obj의 getCount() 호출 : <br />
<%-- <%
	int c = obj.getCount(); // 로 해도 됨
%> --%>

<jsp:getProperty property="count" name="obj"/>
<br />
<a href="result1.jsp">result1</a>
</b>
