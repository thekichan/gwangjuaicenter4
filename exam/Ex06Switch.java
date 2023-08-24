package exam;

public class Ex06Switch {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int led = 1; // 1 or 2 or 3
		
		// led가 1이면 "LED 1 ON"
		// led가 2이면 "LED 2 ON"
		// led가 3이면 "LED 3 ON"
		
		// switch ~ case 문
		// switch(값)  {case 값 : }
		
		switch (led) {
			case 1 : System.out.println("LED 1 ON"); break;
			case 2 : System.out.println("LED 2 ON"); break;
			case 3 : System.out.println("LED 3 ON"); break;
			default : System.out.println("잘못 들어왔습니다");
		
		}

	}

}
