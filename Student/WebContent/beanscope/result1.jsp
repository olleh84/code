<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="obj" class="my.scope.CountBean" scope="page" />
<b>page : obj의 getCount() : </b><br />

<jsp:getProperty property="count" name="obj"/>

<a href="scope1.jsp">scope1.jsp</a>