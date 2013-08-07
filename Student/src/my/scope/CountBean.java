package my.scope;

public class CountBean 
{
	// property : 빈에서는 멤버변수를 프로퍼티라고 한다.
	private int number;

	public CountBean() 
	{
		System.out.println("CountBean()생성..");
	}
	
	// setter, getter
	// 주의 : html form의 input name을
	// set, get 메소드 뒤의 이름과 일치시켜 주는것이 좋다
	// setProperty할때 편리함
	public void setCount(int i)
	{
		this.number += i;
	}
	public int getCount() 
	{
		return number;
	}
}
