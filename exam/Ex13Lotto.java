package exam;

import java.util.Arrays;
import java.util.Random;

public class Ex13Lotto {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int[] lotto = new int [6];
		
		// 1 ~ 45 중 하나를 랜덤하게 만들어서 대입!!
		
		Random rd = new Random();
		
		
		for (int i = 0; i< lotto.length; i++) {
			lotto[i] = rd.nextInt(45) + 1;
			
			
			for(int j = 0; j < i; j++) {
				if (lotto[i]== lotto[j]) {
				
					//다시뽑기
					i--;
					break;
			}
			}
		}
		
		
		
		System.out.println(Arrays.toString(lotto));
		

	}

}
