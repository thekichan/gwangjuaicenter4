package exam;

public class Ex20BinarySearch {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int[] array = {1, 7, 16, 25, 30, 33, 41, 66, 78, 90};
		
		int searchValue = 1;
		
		int lowIndex = 0;
		
		int highIndex = array.length -1; // 9
		
		int midIndex = (lowIndex + highIndex) / 2; // 4
		
		boolean isContain = false;
		
		while(lowIndex <= highIndex) {
			midIndex = (lowIndex + highIndex) / 2;
			
		
			if (searchValue == array[midIndex]) {
				System.out.printf("%d은(는) %d에 있습니다", searchValue, midIndex);
				isContain = true;
				break;
				
			}else if (searchValue > array[midIndex]) {
				lowIndex = midIndex + 1;
			}else if (searchValue < array[midIndex]) {
				highIndex = midIndex - 1;
			}
		}
		if(!isContain) {
		System.out.println(searchValue + "(은)는 없습니다");
		}
	}
}
