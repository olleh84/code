package my.scope;

public class CountBean 
{
	// property : �󿡼��� ��������� ������Ƽ��� �Ѵ�.
	private int number;

	public CountBean() 
	{
		System.out.println("CountBean()����..");
	}
	
	// setter, getter
	// ���� : html form�� input name��
	// set, get �޼ҵ� ���� �̸��� ��ġ���� �ִ°��� ����
	// setProperty�Ҷ� ����
	public void setCount(int i)
	{
		this.number += i;
	}
	public int getCount() 
	{
		return number;
	}
}
