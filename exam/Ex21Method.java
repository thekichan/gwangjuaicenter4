package exam;

public class Ex21Method {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// Method (기능) : Python 함수와 동일 !
		
		System.out.println(sum(5,10));
		System.out.println(sum(10,20));
	}
	
	
	// Method 정의
	public static int sum(int a, int b) {
		int result = a + b ;
		return (int) (result *1.2); 
		
	
	}
}
