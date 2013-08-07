package my.student;
/*
 * DB�÷����� �������ȭ ��Ű�� �۾�
 * DTO : Data Transfer Object
 * VO : Value Object
 * */
public class StudentDTO 
{
	private String id;
	private String name;
	private String cname;
	
	// ������ �����ε�
	public StudentDTO() 
	{
		System.out.println("StudentDTO()����");
	}
	public StudentDTO(String id, String name, String cname)
	{
		this.id = id;
		this.name = id;
		this.cname = cname;
	}
	
	// private �ʵ��� setter, getter
	public void setId(String id) {
		System.out.println("setId() : " + id);
		this.id = id;
	}
	public String getId() {
		return id;
	}
	public void setName(String name) {
		System.out.println("setName() : " + name);
		this.name = name;
	}
	public String getName() {
		return name;
	}
	public void setCname(String cname) {
		System.out.println("setCname() : " + cname);
		this.cname = cname;
	}
	public String getCname() {
		return cname;
	}
}
