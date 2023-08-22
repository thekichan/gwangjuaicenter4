package exam;

public class Ex10Format {

	public static void main(String[] args) {
		
		
		// TODO Auto-generated method stub
		
		
		String name = "기찬";
		int age = 37;
		String mbti = "ISFJ";
		
		// 이름 : 기찬, 나이 : 37(세), MBTI : ISFJ
		
		// %s : String
		// %d : decimal (정수)
		// %f : float (실수)
		// %n : new (새로운 라인)
		
		// 2. System.out.printf()
		
		
		
		System.out.printf("이름 : %s, 나이 : %d(세), MBTI :%s%n", name, age, mbti);
		
		// 1. String.format
		String info = String.format("이름 : %s, 나이 : %d(세), MBTI :%s", name, age, mbti);
		System.out.println(info);
		// %숫자s :  숫자 자릴수만큼 표현!! (오른쪽 정렬)
		// 왼쪽 정렬 : 숫자 앞에 - 붙여서
		System.out.printf("%10s", "*");
		
		
		

	}

}
