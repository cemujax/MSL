package controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.member.MemberVO;
import model.photobook.PhotoBookService;
import model.photobook.PhotoBookVO;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class PhotoBookController extends MultiActionController {
	private PhotoBookService photoBookService;
	private String path;

	public void setPhotoBookService(PhotoBookService photoBookService) {
		this.photoBookService = photoBookService;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public ModelAndView create(HttpServletRequest request, HttpServletResponse response, HttpSession session,
			PhotoBookVO pbvo) throws Exception {
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");

		pbvo.setMemberVO(mvo);

		List<String> cmt = pbvo.getComment();
		List<MultipartFile> files = pbvo.getFile();

		for (int i=0; i< files.size(); i++) {
			if(!files.get(i).isEmpty()) {
				String fileName = files.get(i).getOriginalFilename();
				String msg = ""+ cmt.get(i);

				if (pbvo.getFileName() == null) {
					pbvo.setFileName(fileName);
					
					pbvo.setBookComment(msg);
				}
				
				else {
					pbvo.setFileName(pbvo.getFileName() + "`" + fileName);
					pbvo.setBookComment(pbvo.getBookComment()+ "`END`"+ msg);
				}
					
			}
			
		}

		photoBookService.createPhotoBook(pbvo);

		File filePath = new File(path + mvo.getMemberId() + "/" + pbvo.getBookNo());

		if (!filePath.getAbsoluteFile().getParentFile().exists())
			filePath.getAbsoluteFile().getParentFile().mkdirs();

		if (!filePath.exists())
			filePath.mkdir();

		for (MultipartFile f : files)
			if(!f.isEmpty())
				f.transferTo(new File(filePath + "/" + f.getOriginalFilename()));

		// TODO 수정
		return new ModelAndView("redirect:/photoBook.do?command=list");
	} // create

	/*
	 * modifyPhotoBook deletePhotoBook
	 */

	public ModelAndView list(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");
		List<PhotoBookVO> pbList = photoBookService.getPhotoBookList(mvo.getMemberId());

		// TODO 수정
		return new ModelAndView("pbresult", "pbList", pbList);
	} // list

	public ModelAndView detail(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");

		PhotoBookVO pbvo = new PhotoBookVO();
		pbvo.setBookNo(Integer.parseInt(request.getParameter("no")));
		pbvo.setMemberVO(mvo);

		// TODO FIX THIS
		pbvo = photoBookService.getPhotoBookByNo(pbvo);
		request.setAttribute("pbImgList", photoBookService.imgList(pbvo.getFileName(), pbvo.getBookComment()));
		// TODO 수정
		return new ModelAndView("pbcontent", "pbvo", pbvo);
	} // detail

	// ///////////////////////////// ajax
	public ModelAndView ajaxList(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");
		List<PhotoBookVO> pbList = photoBookService.getPhotoBookList(mvo.getMemberId());

		// TODO 수정
		return new ModelAndView("JsonView", "pbList", pbList);
	} // ajaxList

	public ModelAndView ajaxDetail(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {
		MemberVO mvo = (MemberVO) session.getAttribute("mvo");

		PhotoBookVO pbvo = new PhotoBookVO();

		pbvo.setBookNo(Integer.parseInt(request.getParameter("no")));
		pbvo.setMemberVO(mvo);

		pbvo = photoBookService.getPhotoBookByNo(pbvo);

		// TODO 수정
		return new ModelAndView("JsonView", "pbvo", pbvo);
	} // ajaxDetail
}
