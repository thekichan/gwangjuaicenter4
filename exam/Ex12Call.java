package exam;

import java.util.Arrays;
import java.util.Scanner;

public class Ex12Call {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// Call by Value
		int num = 5;
		int num2 = num;
		
		System.out.println(num2);
		num2 = 10;
		System.out.println(num2);
		System.out.println(num);
		
		// call by Reference
		
		String[] snacks = {"양파링", "꼬깔콘", "뿌셔뿌셔딸기맛"};
		String[] drinks = {"데자와", "솔의눈", "ZICO"};
		
		System.out.println(Arrays.toString(snacks));
		System.out.println(Arrays.toString(drinks));
		snacks[0] = "먹태깡";
		System.out.println(Arrays.toString(snacks));
		drinks = snacks;
		System.out.println(Arrays.toString(drinks));
		snacks[0] = "새우깡";
		System.out.println(Arrays.toString(drinks));
		
		System.out.println(drinks);
		System.out.println(snacks);
		
		Scanner sc = new Scanner(System.in);
		int input = sc.nextInt();
		
		

	}

}
