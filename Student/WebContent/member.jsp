<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<%@ include file="top.jsp"%>
<!-- member.jsp-->
<form name="f" method="POST" action="member_input.jsp">
  <TABLE width="600" cellpadding="5" align="center" class="outline">
  <TR>
	<TD colspan="2" align=center class="m2">회원가입</TD>
 </TR>
  <TR>
	<TD width="150" class="m3">이름</TD>
	<TD class="m3"><INPUT TYPE="text" NAME="name" class="box"></TD>
  </TR>
  <TR>
	<TD width="150" class="m3">아이디</TD>
	<TD class="m3"><INPUT TYPE="text" NAME="id" class="box"></TD>
  </TR>
  <TR>
	<TD width="150" class="m3">비밀번호</TD>
	<TD class="m3"><INPUT TYPE="password" NAME="pwd" class="box"></TD>
  </TR>
  <TR>
	<TD width="150" class="m3">주민번호</TD>
	<TD class="m3">
			<INPUT TYPE="text" NAME="ssn1" maxlength="6" class="box">-
			<INPUT TYPE="password" NAME="ssn2" maxlength="7" class="box">
	</TD class="m3">
  </TR>
  <TR>
	<TD width="150" class="m3">이메일</TD>
	<TD class="m3"><INPUT TYPE="text" NAME="email" class="box"></TD>
  </TR>
  <TR>
	<TD width="150" class="m3">연락처</TD>
	<TD class="m3">
	<INPUT TYPE="text" NAME="hp1" size="3" class="box">-
	<INPUT TYPE="text" NAME="hp2" size="4" class="box">-
	<INPUT TYPE="text" NAME="hp3" size="4" class="box">
	</TD>
  </TR>
  <tr>
	<td colspan="2" align="center">
		<A HREF="javascript:check()">[전송]</A>
		<A HREF="#">[취소]</A>
	</td>
  </tr>
  </TABLE>
</form>
<%@ include file="bottom.jsp"%>
</body>
</html>