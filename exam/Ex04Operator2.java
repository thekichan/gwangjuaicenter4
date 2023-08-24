package exam;

public class Ex04Operator2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 증감연산자
		// 줄 정렬 : Ctrl + Shift + F
		int num = 5;
		num++;
		System.out.println(num); // 6
		num--;
		System.out.println(num); // 5
		
		++num;
		System.out.println(num); // 6
		
		--num;
		System.out.println(num); // 5
		
		
		System.out.println(++num); //6
		System.out.println(num++); //6
		System.out.println(num); //7
		
		//2. 대입연산자
		// =, +=, -=, *=, /=
		num = 10;
		
		//3. 산술연산자
		// +,-, *, /, %
		System.out.println(7/3);
		// 2.33333 -> double -> int로 캐스팅
		// java에서 정수 연산 정수 -> 정수 결과가 나온다
		
		// 7 / 3 -> 2.33333
		System.out.println(7 * 1.0 / 3);
		
		double num1 = 1.1;
		double num2 = 2.2;
		
		System.out.println(num1 + num2);
		
		// 3. 비교 연산자
		// >, >=, <. <=, ==. != 
		// 연산의 결과 : boolean (true, false)
		
		// 4. 논리 연산자
		// AND(논리곱) : &&, OR(논리합) : ||
		
		// 5. 삼항 연산자
		// (조건식) ? (실행문1) : (실행문2)
		int num3 = 22;
		System.out.println(num3 % 2 ==0 ? "돈까스" : "제육볶음");

	}

}
