package exam;

import java.util.Arrays;

public class Ex19Sort2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		//2. Selection Sort
		int[] array = {98, 7, 70, 13, 24};
		int maxIndex = 0;
		int temp = 0;
		
		
		for(int j = 5; j >1; j--) {
			// cycle1
			// 인덱스를 저장해서 해당 인덱스를 치환을 통해 비교
			
			maxIndex = 0;
			for (int i = 0; i < j; i++) {
				if(array[i] > array[maxIndex]) {
					maxIndex = i;
				}
			}
			temp = array[j-1];
			array[j-1] = array[maxIndex];
			array[maxIndex] = temp;
			
		}
		System.out.println(Arrays.toString(array));
	}

}
