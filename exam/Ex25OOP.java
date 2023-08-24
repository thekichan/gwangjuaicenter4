package exam;

public class Ex25OOP {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		//OOP (Object - Oriented Programming) - 객체지향 프로그램
		
		//1. 기본 데이터 타입
		//2. 레퍼런스 데이터 타입
		// - 1) 배열에 대한 레퍼런스
		// - 2) 클래스에 대한 레퍼런스
		// - 3) 인터페이스에 대한 레퍼런스
		
		int num = 5;
	    House yeho_house = new House();
	    yeho_house.price = 200000000;
	    yeho_house.area = 20;
	    yeho_house.isApart = true;
	    
	    System.out.println(yeho_house.price);
	    
	    House parent_house = new House() ; 
	    parent_house.price = 20000000;
	    System.out.println(yeho_house.price);
	    

	}

}
