package exam;

import java.util.Scanner;

public class Ex05Con {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 한 줄 삭제 : Ctrl + D
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("나이를 입력하세요 : ");
		
		int age = sc.nextInt();
		
		if(age >= 40) {
			System.out.println("아저씨 혹은 아줌마입니다");
			
		}else if(age >= 20){
			System.out.println("성인입니다");
		}else {
			System.out.println("미성년자입니다");
		}

	}

}
