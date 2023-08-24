package exam;

public class Ex17Practice3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 5 X 5 정방형 int형 Matrix
		int[][] array = new int [5][5];
		
		
		
		int cnt = 1;
		// 입력부
		
		
		for (int j =0; j < 5; j++) {
			for (int i = 0; i <5; i++) {
				array[j][i] = cnt++;
			
		}
		
		
		
		
		
		
		
		//array[0][0] = cnt++;
		//array[0][1] = cnt++;
		//array[0][2] = cnt++;
		//array[0][3] = cnt++;
		//array[0][4] = cnt++;
		
	
	}
		// 출력부
		for(int j=0; j<5; j++) {
			for (int i = 0; i <5; i++) {
				System.out.printf("%-2d", array[j][4-i]);
		}
			System.out.println();
			
		}
	}
}