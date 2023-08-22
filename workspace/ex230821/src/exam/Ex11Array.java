package exam;

import java.util.Arrays;

public class Ex11Array {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 배열 : 동일한 자료구조를 index를 통해 관리
		// 자료 구조 : 대량의 데이터를 효율적으로 다루기 위해 사용
		// 변수의 선언
		int num; // 변수의 선언
		num = 5; // 변수의 할당 (최초 할당 : 초기화)
		num = 10; // 변수의 재할당
		
		int num2 = 21; //변수의 선언 및 초기화
		
		// 금주 로또 번호를 담고 있는 배열 lotto
		
		// 레퍼런스 변수 -> 생성(new)
		
		int[] lotto; // 배열의 선언
		lotto = new int[6];  // 배열 생성시 반드시 크기 결정 !
		
		// 배열 index는 0-index 체계
		lotto[0] = 2;
		lotto[1] = 9;
		lotto[2] = 17;
		lotto[3] = 31;
		lotto[4] = 35;
		lotto[5] = 44;
		
		// 배열.length -> 배열의 길이, 크기
		
		
		
		for(int i = 0; i < lotto.length; i++) {
			
			System.out.print(lotto[i] + " ");
		}
		
		// Arrays.toString(1차원 배열);
		System.out.println(Arrays.toString(lotto));
		
		// 배열의 선언, 생성
		// 배열 생성과 동시에 초기화!!
		int[] nums = new int [] {1,2,3,4,5};
		int[] nums2 = {5,6,7};

	}

}
