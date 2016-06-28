package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.admin.AdminService;
import model.admin.ListVO;
import model.member.MemberVO;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class AdminController extends MultiActionController {
	private AdminService adminService;

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public ModelAndView getAllMembers(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ListVO lvo = adminService.getAllMembers(request.getParameter("page"));
		request.setAttribute("total", adminService.totalCount());
		return new ModelAndView("admin/admin", "mListVO", lvo);
	}

	public ModelAndView modifyMember(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String member_id = request.getParameter("member_id");
		return new ModelAndView("admin/modifyMember", "member_id", member_id);
	}
	
	public ModelAndView executeUpdate(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("entered executeUpdate");
		String member_id = request.getParameter("member_id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String phone_number = request.getParameter("phone_number");
		
		MemberVO mvo = new MemberVO(member_id, password, name, phone_number);
		
		int res = adminService.executeUpdate(mvo);

		return new ModelAndView("redirect:/admin.do?command=getAllMembers");
	}

	public ModelAndView deleteMember(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		int res = adminService.deleteMember(request.getParameter("member_id"));
		return new ModelAndView("redirect:/admin.do?command=getAllMembers");
	}

}
