package test;

import java.io.File;

import org.junit.Test;

public class JunitTest {

	
	@Test
	public void JunitTest(){
		System.out.println("ddd");
		//  ..\\..\\MSL\\Final_WeddingCard\\src\\main\\webapp\\url\\
		
		File file = new File("../../../main/webapp/url/deleteT");
		file.delete();
	}
}
