package days16;

import java.util.Scanner;

public class Ex01_02 {

	public static void main(String[] args) {

		int a = 0, b = 0;

		Scanner scanner = new Scanner(System.in);

		while (true) {

			try { // 예외가 발생할 수 있는 부분을 넣는다. 예외가 하나라도 발생하면 다음껀 무시하고 catch 문으로 간다. / 예외가 없는 경우 catch 문 실행 X

				System.out.print("> a, b 두 정수 입력");
				a = scanner.nextInt();
				// 1 a 입력시 InputMismatchException 타입 불일치 a => nextInt()
				b = scanner.nextInt();
				break;
				
			} catch (Exception e) {
				// 예외 처리
				scanner.nextLine();
				System.out.print("> 입력 값 잘못 실패...");
				// e.printStackTrace();
				// System.out.println(e.getMessage());
				// System.out.println(e.toString());
			}	// try catch
			
		} // while 조건 입력을 제대로 할 때 까지



		if (b==0) {
			System.out.println();
		}


		
		// 주의할 점 - 자식 catch 블럭을 먼저 코딩한다.
		try {
			double c = a/b;
		System.out.printf("%d / %d = %.2f\n",a,b,c);
		} catch (ArithmeticException e) { // 자식을 항상 위에 둔다.
			System.out.println(e.toString());
		} catch (Exception e) { // 부모를 아래에 둔다.
			
		} 



		System.out.println("end");


		
	} // main

} // class
