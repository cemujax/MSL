package controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.admin.AdminService;
import model.admin.ListVO;
import model.member.MemberVO;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class AdminController extends MultiActionController {
	private String path;
	private AdminService adminService;

	public void setPath(String path) {
		this.path = path;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
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

}
