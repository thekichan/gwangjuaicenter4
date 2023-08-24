package exam;

public class Ex22Methods {

	public static void main(String[] args) {
		sumPrint(5,10);
		
		// TODO Auto-generated method stub
		
		

	}
	
	// 매개변수 O , 리턴타입 O
	public static int sum(int a, int b) {
		return a+ b ;
	}
	// 매개변수 O, 리턴타입 X
	public static void sumPrint (int a, int b) {
		System.out.println(a + b);
	}
	// 매개변수 X, 리턴타입 O
	public static String getName() {
		return "기찬";
	}
	// 매개변수 X, 리턴타입 X 
	public static void todayGwangjuWeather() {
		System.out.println("오늘 광주 하늘은 비옴");
	}
	

}
