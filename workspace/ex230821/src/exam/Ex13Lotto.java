package exam;

import java.util.Random;

public class Ex13Lotto {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int[] lotto = new int [6];
		
		// 1 ~ 45 중 하나를 랜덤하게 만들어서 대입!!
		
		Random rd = new Random();
		lotto[0] = rd.nextInt(45) + 1;
		System.out.println(lotto[0]);
		rd.nextInt(10); // 0  ~  9
		
		lotto[1] = rd.nextInt(45) + 1;
		// 이와 같은 방식으로 로또 번호 6개를 뽑아 lotto배열에 대입!!
		// 단, 중복이 발생하면 안된다
		
		

	}

}
