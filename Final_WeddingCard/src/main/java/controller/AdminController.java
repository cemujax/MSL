package controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.admin.AdminService;
import model.admin.ListVO;
import model.card.CardService;
import model.card.CardTemplateService;
import model.card.CardTemplateVO;
import model.card.CardVO;
import model.member.MemberVO;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class AdminController extends MultiActionController {
	private String path;
	private AdminService adminService;
	private CardTemplateService cardTemplateService;
	private CardService cardService;
	
	public void setCardService(CardService cardService) {
		this.cardService = cardService;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public void setCardTemplateService(CardTemplateService cardTemplateService) {
		this.cardTemplateService = cardTemplateService;
	}

	public ModelAndView getAllMembers(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("AdminController :: getAllMembers :: page "+ request.getParameter("page"));
		
		ListVO lvo = adminService.getAllMembers(request.getParameter("page"));
		
		request.setAttribute("total", adminService.totalCount());
		
		return new ModelAndView("admin/admin", "mListVO", lvo);
	}

	public ModelAndView modifyMember(HttpServletRequest request, HttpServletResponse response,
					MemberVO mvo) throws Exception {
		System.out.println("AdminController :: modifyMember :: memberId = "+ mvo.getMemberId());
		
		adminService.modifyMember(mvo);
		
		return new ModelAndView("redirect:/admin.do?command=getAllMembers");
	}
	
	public ModelAndView deleteMember(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.print("AdminController :: deleteMember");
		
		String id = request.getParameter("id");
		System.out.println(" :: "+ id);
		
		File photoBookPath = new File(path+ "img/photobook/"+ id);
		
		// photoBook Delete
		if(photoBookPath.exists()) {
			File[] pbFolder = photoBookPath.listFiles();
			
			for(File file : pbFolder) {
				if(file.isDirectory()) {
					File[] pbFiles = file.listFiles();
					
					for(File f : pbFiles) {
						f.delete();
					}
				}
				
				file.delete();
			}
			
			photoBookPath.delete();
		}
		
		// card Delete
		List<String> list = adminService.getUrlById(id);
		
		for(String s : list) {
			File cardPath = new File(path+ "url/"+ s);
			File[] cardFile = cardPath.listFiles();
			
			for(File f : cardFile) {
				f.delete();
			}
			
			cardPath.delete();
			
			File cardJsp = new File(path+ "url/"+ s+ ".jsp");
			
			cardJsp.delete();
		}
		
		adminService.deleteMember(id);
		
		return new ModelAndView("redirect:/admin.do?command=getAllMembers");
	}
	
	public ModelAndView createTemplate(HttpServletRequest request, HttpServletResponse response,
								CardTemplateVO ctvo) throws Exception{
		System.out.println("Admin Controller :: createTemplate");
		
		MultipartFile urlTemplate = ctvo.getUrlTemplate();
		
		File urlPath = new File(path+ "url/template/"+ ctvo.getTemplateName()+ ".jsp");
		
		urlTemplate.transferTo(urlPath);
		
		cardTemplateService.createCardTemplate(ctvo);
		
		return new ModelAndView("redirect:/admin.do?command=getAllMembers");
	}
	
	
	// TODO ================================ ajax
	public ModelAndView copy(HttpServletRequest request, HttpServletResponse response) 
							throws Exception{
		System.out.println("Admin Controller :: copy");
		
		 //파일을 복사하는 메소드
		  try {
		   FileInputStream fis = new FileInputStream(path+ "fileUpload.jsp");
		   FileOutputStream fos = new FileOutputStream(path+ "testUpload"+ request.getParameter("index")+ ".jsp");
		   
		   int data = 0;
		   while((data=fis.read())!=-1) {
		    fos.write(data);
		   }
		   fis.close();
		   fos.close();
		   
		  } catch (IOException e) {
		   e.printStackTrace();
		  }
		 
		return new ModelAndView("JsonView");
	}
	
	public ModelAndView upload(HttpServletRequest request, HttpServletResponse response) 
							throws Exception{
		System.out.println("Admin Controller :: upload :: START");
		
		String folderName = request.getParameter("folder");
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		
		Iterator<String> itr =  multipartRequest.getFileNames();
        
		File uploadPath = new File(path+ "weddingCard/" + folderName);
		System.out.println(" FILE_PATH : "+ uploadPath);
		
		if(!uploadPath.exists())
			uploadPath.mkdirs();
		
        while (itr.hasNext()) { //받은 파일들을 모두 돌린다.
             
            MultipartFile mpf = multipartRequest.getFile(itr.next());
            String originFileName = mpf.getOriginalFilename();
            System.out.println(" FILE_INFO : "+originFileName); //받은 파일 리스트 출력
            
            mpf.transferTo(new File(uploadPath+ "/"+ originFileName));
       }
		
        System.out.println("Admin Controller :: upload :: END");
		return new ModelAndView("redirect:/admin.do?command=getAllCardTemplates");
	}
	
	public ModelAndView getAllCardTemplates(HttpServletRequest request,
	         HttpServletResponse response) throws Exception {

	      System.out.println("getAllCardTemplates 컨트롤러");

	      List<CardTemplateVO> templateList = cardTemplateService.getAllCardTemplates();

	      return new ModelAndView("admin/admin_templateList", "templateList", templateList);
	   }
	
	 public ModelAndView deleteTemplate(HttpServletRequest request,
	         HttpServletResponse response) throws Exception {

	      System.out.println("deleteCard controll");
	      String templateNo = request.getParameter("templateNo");
	      System.out.println("temNo::"+templateNo);

	      cardTemplateService.deleteTemplate(Integer.parseInt(templateNo));// 템플릿 삭제함
	      
	      List<CardVO> nonCardList =  cardService.getAllTemplateNoNullCards();
	      
	      String format = "<%@ page language='java' contentType='text/html; charset=UTF-8'\n"
	              + "pageEncoding='UTF-8' isELIgnored='false'%><%@ taglib prefix='c'\n uri='http://java.sun.com/jsp/jstl/core'%>\n"
	              + "<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>"
	              + "<!DOCTYPE html>\n<html>\n<head>\n<meta charset='UTF-8'>\n<title>Insert title here</title></head>\n<body>\n";

	       
	      for(int i=0; i<nonCardList.size(); i++){
	    	  String url = nonCardList.get(i).getUrl();
	    	  File file_url = new File(path +"url/"+ url + ".jsp"); //path wepapp까지만 잡혀있음
	    	 
	    	  BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(
		              new FileOutputStream(file_url), "UTF-8"));
	    	  
	    	  try {
	    	         bw.write(format);
	    	         bw.write("<%response.sendRedirect(\"../NonExistTemplate.jsp\");\n"
	    	        + "%>");
	    	         // jsp 닫음
	    	         bw.write("\n</body>\n</html>\n");
	    	         bw.close();

	    	      } catch (IOException e) {
	    	         e.printStackTrace();
	    	      }
	    	  
	      }//for
	    	  
	      
	    	  
	      return new ModelAndView("redirect:/admin.do?command=getAllCardTemplates");
	   }
}
