package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.admin.AdminService;
import model.admin.ListVO;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class AdminController extends MultiActionController{
	private AdminService adminService;

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public ModelAndView getAllMembers(HttpServletRequest request, HttpServletResponse response)
							throws Exception {
		ListVO lvo = adminService.getAllMembers(request.getParameter("page"));
		
		request.setAttribute("total", adminService.totalCount());
		
		return new ModelAndView("admin/admin", "mListVO", lvo);
	}
}
