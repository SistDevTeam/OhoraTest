package days21;

import java.io.DataInputStream;
import java.io.FileInputStream;

public class Ex09_02 {

	public static void main(String[] args) {
		
		String name;
		int kor, eng, mat;
		int tot;
		double avg;
		boolean gender;

		String fileName = ".\\src\\days21\\student.dat";
		try ( FileInputStream fis = new FileInputStream(fileName);
			  DataInputStream dis = new DataInputStream(fis); ){
			name = dis.readUTF();
			kor = dis.readInt();
			eng = dis.readInt();
			mat = dis.readInt();
			tot = dis.readInt();
			avg = dis.readDouble();
			gender = dis.readBoolean();
			
			System.out.printf("%s %d %d %d %d %f %b\n", name, kor, eng, mat, tot, avg, gender);		
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	} // main

} // class
