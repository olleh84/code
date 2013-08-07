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
<div>
 <IMG SRC="img/bottom.gif" WIDTH="90%" HEIGHT="40" BORDER="0" ALT=""><BR>
 <p>
 <IMG SRC="img/tm_login.gif" WIDTH="74" HEIGHT="13" BORDER="0" ALT="회원 로그인">

  <table width="90%" align="center" border="0" height="120">
	<tr>
	<td align="right" width="30%">
		<IMG SRC="img/id01.gif" WIDTH="28" HEIGHT="11" BORDER="0" ALT="아이디">&nbsp;&nbsp;</td>
	<td width="40%">
		<INPUT TYPE="text" NAME="id" id="myinput" style="border:solid 1px"></td>
	<td rowspan="2" width="30%" valign="middle">
	<IMG SRC="img/bt_login.gif"  BORDER="0" ALT="">&nbsp;&nbsp;
	<br><nobr>
		<input type="checkbox" name="saveId">
		<font face="굴림" size="2">아이디 기억하기</font>
		</nobr>
	</td>
	</tr>
	<tr>
		<td align="right">
		<IMG SRC="img/pwd.gif" WIDTH="37" HEIGHT="11" BORDER="0" ALT="비밀번호"></td>
		<td><INPUT TYPE="password" NAME="pwd"  id="myinput"></td></tr>
	<tr>
		<td colspan="3" align="center">
		<IMG SRC="img/bt_join.gif" WIDTH="60" HEIGHT="22" BORDER="0" ALT="회원가입">
		<IMG SRC="img/bt_search_id.gif" WIDTH="56" HEIGHT="22" BORDER="0" ALT="아이디 찾기">
		<IMG SRC="img/bt_search_pw.gif" WIDTH="61" HEIGHT="22" BORDER="0" ALT="비밀번호 찾기">
		</td>
	</tr>
  </table>
</div>
<%@ include file="bottom.jsp" %>
</body>
</html>