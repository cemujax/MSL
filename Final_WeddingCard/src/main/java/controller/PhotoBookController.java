package controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

	public ModelAndView create(HttpServletRequest request, HttpServletResponse response,
			PhotoBookVO pbvo) throws Exception {
		System.out.print("PhotoBook Controller :: create");
		
		MemberVO mvo = (MemberVO) request.getSession().getAttribute("mvo");

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
		System.out.println(path);
		File filePath = new File(path + mvo.getMemberId() + "/" + pbvo.getBookNo());

		if (!filePath.getAbsoluteFile().getParentFile().exists())
			filePath.getAbsoluteFile().getParentFile().mkdirs();

		if (!filePath.exists())
			filePath.mkdir();

		for (MultipartFile f : files)
			if(!f.isEmpty())
				f.transferTo(new File(filePath + "/" + f.getOriginalFilename()));
		
		System.out.println(" :: "+ pbvo.getBookNo());
		
		return new ModelAndView("redirect:/photoBook.do?command=list");
	} // create

	public ModelAndView modifyView(HttpServletRequest request, HttpServletResponse response)throws Exception {
		System.out.println("PhotoBook Controller :: modifyView");
		
		PhotoBookVO pbvo = photoBookService.getPhotoBookByNo(request.getParameter("bookNo"));
		request.setAttribute("pbImgList", photoBookService.imgList(pbvo.getFileName(), pbvo.getBookComment()));
		
		return new ModelAndView("photobook/photoBookModify", "pbvo", pbvo);
	} // modifyView
	
	public ModelAndView modify(HttpServletRequest request, HttpServletResponse response,
							PhotoBookVO pbvo) throws Exception {
		System.out.println("PhotoBook Controller :: modify :: "+ pbvo.getBookNo());
		
		String oldFile = request.getParameter("oldFile");
		String[] oldList = oldFile.split("`");
		List<String> oldPath = new ArrayList<String>();
		
		MemberVO mvo = (MemberVO) request.getSession().getAttribute("mvo");

		pbvo.setMemberVO(mvo);

		List<String> cmt = pbvo.getComment();
		List<MultipartFile> files = pbvo.getFile();
		
		for(int i =0; i< oldList.length; i++) {
			String fileName;
			
			if(files.get(i).isEmpty()) {
				fileName = oldList[i];
				oldPath.add(fileName);
			}
				
			else 
				fileName = files.get(i).getOriginalFilename();
			
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

		for (int i=oldList.length; i< files.size(); i++) {
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
		
		photoBookService.modifyPhotoBook(pbvo);
		
		File tmpPath = new File(path + mvo.getMemberId() + "/" + pbvo.getBookNo());

		File filePath = new File(path+ mvo.getMemberId()+ "/modify");
		
		filePath.mkdir();
		
		for(String s : oldPath) {
			File mvFile = new File(tmpPath+ "/"+ s);
			mvFile.renameTo(new File(filePath+ "/"+ s));
		}

		for (MultipartFile f : files)
			if(!f.isEmpty())
				f.transferTo(new File(filePath + "/" + f.getOriginalFilename()));
		
		File[] delFiles = tmpPath.listFiles();
			
		for(File f : delFiles) {
			f.delete();
		}
		
		tmpPath.delete();
		
		filePath.renameTo(tmpPath);
		
		return new ModelAndView("redirect:photoBook.do?command=detail&&no="+ pbvo.getBookNo());
	} // modify

	
	public ModelAndView delete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.print("photoBook Controlelr :: delete");
		
		String bno = request.getParameter("bookNo");
		System.out.println(" :: bookNo "+ bno);
		
		photoBookService.deletePhotoBook(bno);
		
		File delPath = new File(path+ ((MemberVO) request.getSession().getAttribute("mvo")).getMemberId()+ "/"+ bno);

		if(delPath.exists()) {
			File[] files = delPath.listFiles();
			
			for(File f : files) {
				f.delete();
			}
		}
		
		delPath.delete();
		
		delPath.getParentFile().delete();

		return new ModelAndView("redirect:/photoBook.do?command=list");
	} // delete
	
	
	public ModelAndView list(HttpServletRequest request, HttpServletResponse response)
							throws Exception {
		System.out.print("PhotoBook Controller :: list");
		
		MemberVO mvo = (MemberVO) request.getSession().getAttribute("mvo");
		
		if(mvo != null) {
			System.out.println(" :: "+ mvo.getMemberId());
			
			List<PhotoBookVO> pbList = photoBookService.getPhotoBookList(mvo.getMemberId());

			return new ModelAndView("photobook/photoBookList", "pbList", pbList);
		}
		
		else
			return new ModelAndView("redirect:authentication/login.jsp?location=pbList");
	} // list

	public ModelAndView detail(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("PhotoBook Contrller :: detail :: "+ request.getParameter("no"));
		
		PhotoBookVO pbvo = photoBookService.getPhotoBookByNo(request.getParameter("no"));
		request.setAttribute("pbImgList", photoBookService.imgList(pbvo.getFileName(), pbvo.getBookComment()));
		
		return new ModelAndView("photobook/photoBookContent", "pbvo", pbvo);
	} // detail


	// ============================== ajax =============================
	public ModelAndView ajaxList(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("PhotoBook Controller :: ajaxList :: IN WeddingCard");
		
		MemberVO mvo = (MemberVO) request.getSession().getAttribute("mvo");
		List<PhotoBookVO> pbList = photoBookService.getPhotoBookList(mvo.getMemberId());

		return new ModelAndView("JsonView", "pbList", pbList);
	} // ajaxList

	public ModelAndView ajaxDetail(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("PhotoBook Controller :: ajaxDetail :: IN WeddingCard");
		
		PhotoBookVO pbvo = photoBookService.getPhotoBookByNo(request.getParameter("no"));

		return new ModelAndView("JsonView", "pbvo", pbvo);
	} // ajaxDetail
}
