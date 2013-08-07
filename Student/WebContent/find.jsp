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
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String sql = "select * from student where name = ?";
	String name = request.getParameter("name");
	
	Connection con = DriverManager.getConnection(url, "scott", "tiger");
	
	PreparedStatement pst = con.prepareStatement(sql);
	pst.setString(1, name);
	ResultSet rs = pst.executeQuery();
%>
<%-- <%
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
	if(!rs.next())
	{
		%>
		<script>
			alert("해당하는 이름이 없습니다.");
			history.back();
		</script>
		<%
		// 리턴안해주면 아래 로직이 수행되니 반드시 리턴
		//return;
	}%> --%>
		<center>
		<hr />
			<h2>학생목록페이지</h2>
		<hr />
		<table border="1" width="500">
			<tr bgcolor="silver">
				<th width="30%">아이디</th>		
				<th>이름</th>
				<th>학급</th>
			</tr>
				
		<%while(rs.next())
		  {%>	
			<tr>
				<td><%= rs.getString("id") %></td>
				<td><%= rs.getString("name") %></td>	
				<td><%= rs.getString("cname") %></td>			
			</tr>
		<%} %>
		</table>
		<a href="student.jsp">등록</a>||
		<a href="find.jsp">검색</a>
		</center>
</body>
<%
	// 반드시 close()
	if(rs != null){ rs.close(); }
	if(pst != null){ pst.close(); }
	if(con != null){ con.close(); }
%>
</html>