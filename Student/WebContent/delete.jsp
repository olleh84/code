<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String sql = "delete student where name = ?";
	
	Connection con = DriverManager.getConnection(url, "scott", "tiger");
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, name);
	int result = pst.executeUpdate();
	if(name == null || name.equals(""))
	{
		%>
		<script>
			alert("이름을 입력하세요.");
			history.back();
		</script>
		<%
		// 리턴안해주면 아래 로직이 수행되니 반드시 리턴
		return;
	}
	if(result > 0)
	{
		%>
		<script>
			alert("삭제되었습니다.");
			location.href="student.jsp";
		</script>
		<%
	}
	else
	{
		%>
		<script>
			alert("해당하는 이름이 없습니다.");
			location.href="student.jsp";
		</script>
		<%
	}
	if(pst != null){ pst.close(); }
	if(con != null){ con.close(); }
%>
</body>
</html>