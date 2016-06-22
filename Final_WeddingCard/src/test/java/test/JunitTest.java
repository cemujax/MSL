package test;

import java.io.File;

import org.junit.Test;

public class JunitTest {

	
	@Test
	public void JunitTest(){
		System.out.println("ddd");
		//  ..\\..\\MSL\\Final_WeddingCard\\src\\main\\webapp\\url\\
		
		File fileTemp = new File("C:/data/url/temp_b/a.txt");
		
		if(!fileTemp.getParentFile().exists()){
			System.out.println("mk dir");
			fileTemp.getParentFile().mkdir();
		}
		
		File file = new File("C:/data/url/pppp/a.txt");
		if(fileTemp.getParentFile().isDirectory()){
			System.out.println("존재존ㄴ재");
			fileTemp.getParentFile().renameTo(file.getParentFile());
		}
		//
		//file.delete();
	}
}
