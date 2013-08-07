<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// 1. 사용자가 입력한 값을 받아오자
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String cname = request.getParameter("cname");
	//out.println(id);
	// 2. 유효성체크 널,빈 문자열체크하자 테이블이 not null이니
	if(id == null || name == null || cname == null || id.trim().equals("") || name.trim().equals("") || cname.trim().equals(""))
	{
		%>
		<script>
			alert("모든값을 입력하셔야 합니다.");
			//history.go(-1); // or
			history.back();
		</script>
		<%
			return;
	}
	// 3. DB와 연결하여 insert문을 전송
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String sql = "insert into student values(?, ?, ?)";
	
	Connection con = DriverManager.getConnection(url, "scott", "tiger");
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, id);
	pst.setString(2, name);
	pst.setString(3, cname);
	int result = pst.executeUpdate();
	if(result > 0)
	{
		%>
		<script>
			alert("저장되었습니다.");
			location.href="list.jsp";
		</script>
		<%
	}
	else
	{
		%>
		<script>
			alert("실패하였습니다.");
			location.href="student.jsp";
		</script>
		<%
	}
	// 4. 자원반납
	if(pst != null){ pst.close(); }
	if(con != null){ con.close(); }
%>
</body>
</html>