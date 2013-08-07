package my.student;
/*
 * DB컬럼들을 멤버변수화 시키는 작업
 * DTO : Data Transfer Object
 * VO : Value Object
 * */
public class StudentDTO 
{
	private String id;
	private String name;
	private String cname;
	
	// 생성자 오버로딩
	public StudentDTO() 
	{
		System.out.println("StudentDTO()생성");
	}
	public StudentDTO(String id, String name, String cname)
	{
		this.id = id;
		this.name = id;
		this.cname = cname;
	}
	
	// private 필드의 setter, getter
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
