package my.student;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

/*
 * DAO : Data Access Object
 * 	-DB�� �����Ͽ� ����Ͻ� ���� ó��(select, insert......)*/
public class StudentDAO 
{
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	
	public StudentDAO() 
	{
		try 
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, "scott", "tiger");
			System.out.println("Connected");
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	// insert Method
	public int insertStudent(String id, String name, String cname) throws SQLException
	{
		int result = 0;
		try 
		{
			String sql =  "insert into student values(?, ?, ?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, cname);
			result = ps.executeUpdate();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		finally
		{
			if(ps != null){ ps.close(); }
			if(con != null){ con.close(); }
		}
		return result;
	}
	// �����ε�
	public int insertStudent(StudentDTO dto) throws SQLException 
	{
		// ĸ��ȭ�� �Ǿ��ֱ� ������ get�޼���� �����ü� �ۿ� ����~
		String id = dto.getId();
		String name = dto.getName();
		String cname = dto.getCname();
		int result = this.insertStudent(id, name, cname);
		return result;
	}
	
	// select
	public StudentDTO[] selectAll() throws SQLException
	{
		try
		{
			String sql = "select * from student";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
			StudentDTO arr[] = makeArray(rs);
			
			return arr;
		}
		finally
		{
			if(rs != null){ rs.close(); }
			if(ps != null){ ps.close(); }
			if(con != null){ con.close(); }
		}
	}
	
	// search
	public StudentDTO[] findStudent (String name) throws SQLException
	{
		try
		{
			String sql = "select * from student where name = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			rs = ps.executeQuery();
			StudentDTO[] arr = makeArray(rs);
			return arr;
		}
		finally
		{
			if(rs != null){ rs.close(); }
			if(ps != null){ ps.close(); }
			if(con != null){ con.close(); }
		}
	}
	// rs�� ���� ������ StudentDTO[] �迭��
	// ����� �����ִ� ���
	public StudentDTO[] makeArray(ResultSet rs) throws SQLException
	{
		Vector<StudentDTO> v = new Vector<StudentDTO>();
		while (rs.next()) 
		{
			String id = rs.getString(1);
			String name = rs.getString(2);
			String cname = rs.getString(3);
			StudentDTO record = new StudentDTO(id, name, cname);
			v.add(record);
		}
		int size = v.size();
		StudentDTO arr[] = new StudentDTO[size];
		v.copyInto(arr); // ���Ϳ� ����� �����Ͱ� �迭arr�� copy��
		return arr;
	}
	
	// delete
	public int deleteStudent(String name) throws SQLException
	{
		try 
		{
			String sql = "delete from student where name = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			int result = ps.executeUpdate();
			return result;
		} 
		finally
		{
			if(ps != null){ ps.close(); }
			if(con != null){ con.close(); }
		}
	}
}
