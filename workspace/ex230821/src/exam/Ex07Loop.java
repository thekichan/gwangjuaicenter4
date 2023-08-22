package exam;

import java.util.Scanner;

public class Ex07Loop {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 1. for
		// 대개 반복 횟수가 정해져 있을 때
		// 가로로 1 ~ 10까지 출력
		// 문법 아두이노 (C++)와 동일
		for(int i = 1; i<= 10; i++) {
			System.out.print(i + " ");
		}
		System.out.println();
		
		// 2. while
		// 대개 반복 횟수가 정해져 있지 않을 때 
		
		// 사용자로부터 정수를 입력받아 
		// 누적 합을 출력!!
		// 예) 3 -> 3
		// 5 -> 8
		// 10 -> 18
		// 만약, -1을 입력하면 
		// "종료되었습니다" 문구와 함께 반복문 종료
		
		// 
		Scanner sc = new Scanner (System.in);
		
		int sum = 0;
		  // for(초기화구문; 조건식; 반복 후 작업;){실행문장;}
	      // while(조건식){실행문장;}
		
		while(true) {
			System.out.print("정수를 입력하세요 : ");
			
			int input = sc.nextInt();
			if(input == -1) {
				System.out.println("종료되었습니다");
				break;
			}
			sum += input; // sum = sum + input;
			
			System.out.println("누적 합 : " + sum);
		}
		

	}

}
