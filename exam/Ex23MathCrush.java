package exam;

public class Ex23MathCrush {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		int num1 = 10;
		int num2 = 2;
		boolean divisor = isDivisor(num1, num2);
		
		System.out.println(divisor);
		
		int num = 10;
		int result = getSumOfDivisors(num);
		System.out.println(num + "의 약수의 합 : " + result);
		
		getDivisor(num);
		
		boolean perfect = isPerfectNumber(num);
		System.out.println(perfect);
		
		int startValue = 2;
		int endValue = 10000;
		
		for(int i = startValue; i <= endValue; i++) {
			if (isPerfectNumber(i)) {
				System.out.println(i);
			}
		}
		

	}

	public static boolean isPerfectNumber(int num) {
		// TODO Auto-generated method stub
		
		//만약 num이 완전수라면 true 리턴
		//아니라면 false 리턴
		
		//완전수 (perfect number)
		//자기 자신을 제외한 약수의 합이 자기 자신과 같은 수 !!
		// 10의 약수 : 1 2 5 10
		// 자기 자신을 제외한 10의 약수의 합 : 8 ≠ 10
		
		
		
		return getSumOfDivisors(num) == num * 2;
	}

	public static int getSumOfDivisors(int num) {
		// TODO Auto-generated method stub
		int result = num ;
		
		for (int i = 1; i <= num/2 ; i++) {
			if(isDivisor(num, i)) {
				result += i;
			}
		}
		
		return result;
	}

	public static boolean isDivisor(int num1, int num2) {
		// TODO Auto-generated method stub
		return num1 % num2 == 0;
		

		
		
		
	}
	public static void getDivisor (int num) {
		
		String result = "";
		result += num;
		result += "의 약수 : ";
		
		// 만약 num 이 10이라면
		// 10의 약수 : 1 2 5 10
		for (int i = 1; i <= num/2 ; i++) {
			if(isDivisor(num, i)) {
				result += i + " ";
			}
		}
		result += num;
		
	
		System.out.println(result);
		
	}

}
