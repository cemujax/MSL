package controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.card.CardService;
import model.card.CardVO;
import model.card.CardcommentVO;
import model.card.QRUtil;
import model.member.MemberVO;
import model.photobook.PhotoBookService;
import model.photobook.PhotoBookVO;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import util.AccessId;

import com.twilio.sdk.Twilio;
import com.twilio.sdk.creator.api.v2010.account.MessageCreator;
import com.twilio.sdk.resource.api.v2010.account.Message;
import com.twilio.sdk.type.PhoneNumber;

public class CardController extends MultiActionController {

	private CardService cardService;
	private PhotoBookService photoBookService;

	private String path;

	public void setCardService(CardService cardService) {
		this.cardService = cardService;
	}

	public PhotoBookService getPhotoBookService() {
		return photoBookService;
	}

	public void setPhotoBookService(PhotoBookService photoBookService) {
		this.photoBookService = photoBookService;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public ModelAndView createCard(HttpServletRequest request,
			HttpServletResponse response, CardVO cvo) throws Exception {
		System.out.println("createCard 컨트롤러");
		System.out.println("cvo::" + cvo);
		// 청첩장 info
		String url = cvo.getUrl();
		String cardDate = cvo.getCardDate();
		String hour = request.getParameter("hour");
		String min = request.getParameter("min");
		String ampm = request.getParameter("ampm");
		String groomName = request.getParameter("groomName");
		String groomTel = request.getParameter("groomTel");
		String brideName = request.getParameter("brideName");
		String brideTel = request.getParameter("brideTel");
		String cardContext = request.getParameter("cardContext");
		String template = request.getParameter("template");
		// member 정보 set
		MemberVO rvo = (MemberVO) request.getSession().getAttribute("mvo");
		cvo.setMemberVO(rvo);

		// 예식날짜
		if (ampm.equals("PM")) {// 오후 시 처리
			int hour_int = Integer.parseInt(hour);
			hour = String.valueOf(hour_int + 12);
			if(hour_int == 12){
				hour = String.valueOf(hour_int - 12);
			}
		}
		cardDate += " " + hour;
		cardDate += " " + min;
		cvo.setCardDate(cardDate);
		System.out.println("cardDate::: + "+cardDate);
		// 신랑 신부 정보
		cvo.setGroomInfo(groomName + "`" + groomTel);
		cvo.setBrideInfo(brideName + "`" + brideTel);
		// photobook도 setter로 넣읍시다
		String pbNo = request.getParameter("photoBookNo");
		if (pbNo.length() != 0) {
			PhotoBookVO pvo = new PhotoBookVO();
			pvo.setBookNo(Integer.parseInt(request.getParameter("photoBookNo")));
			pvo.setFileName(request.getParameter("photoBookImg"));
			pvo.setBookComment(request.getParameter("photoBookComment"));
			cvo.setPhotobookVO(pvo);
		}

		File file_url = new File(path + cvo.getUrl() + ".jsp");
		File file_guestBook = new File(path + "/" + cvo.getUrl()
				+ "/guestBook.jsp");

		if (!file_guestBook.getParentFile().exists()) {
			System.out.println("url 폴더 만듬::"
					+ file_guestBook.getParentFile().mkdir());
		}

		// 상단 이미지
		MultipartFile imgFile = cvo.getImgFile();
		MultipartFile imgGroom = cvo.getImgGroom();
		MultipartFile imgBride = cvo.getImgBride();

		File tempDir = new File(path + "temp_" + rvo.getMemberId()
				+ "//temp.txt");

		String imgPath = "";
		File urlMainImage = new File(path + cvo.getUrl() + "//"
				+ imgFile.getOriginalFilename());

		// 이미지 이름들 변수
		String mainImgName = "";
		String groomImgName = "";
		String brideImgName = "";
		// temp 폴더에서 유저가 지정한 url이름으로 폴더를 만들고 이미지 이동
		if (!imgFile.isEmpty()) {
			File tempMainImage = new File(path + "temp_" + rvo.getMemberId()
					+ "//" + imgFile.getOriginalFilename());
			tempMainImage.renameTo(urlMainImage);
			imgPath += "main`" + imgFile.getOriginalFilename() + "`";
			mainImgName = imgFile.getOriginalFilename();
		}

		// 신랑 신부 이미지 업로드
		if (!imgGroom.isEmpty()) {
			File tempGroomImage = new File(path + "temp_" + rvo.getMemberId()
					+ "//" + imgGroom.getOriginalFilename());
			imgPath += "groom`" + imgGroom.getOriginalFilename() + "`";
			tempGroomImage.renameTo(new File(path + cvo.getUrl() + "//"
					+ imgGroom.getOriginalFilename()));
			groomImgName = imgGroom.getOriginalFilename();
		}
		if (!imgBride.isEmpty()) {
			File tempBrideImage = new File(path + "temp_" + rvo.getMemberId()
					+ "//" + imgBride.getOriginalFilename());
			imgPath += "bride`" + imgBride.getOriginalFilename() + "`";
			tempBrideImage.renameTo(new File(path + cvo.getUrl() + "//"
					+ imgBride.getOriginalFilename()));
			brideImgName = imgBride.getOriginalFilename();
		}

		// 업로드 한번이라도 한경우 temp 경로 삭제
		if (tempDir.getParentFile().isDirectory()) {
			File[] tempFiles = tempDir.getParentFile().listFiles();

			if (tempFiles.length > 0) {
				System.out.println(tempFiles.length);
				for (File delFile : tempFiles)
					delFile.delete();
			}
			tempDir.getParentFile().delete();
		}

		// 이미지, 템플릿 set
		cvo.setMainImage(imgPath);
		System.out.println("선택 템플릿:::" + template);
		cvo.setTemplate(template);

		String file_path = path + "/" + cvo.getUrl() + "/";
		String file_name = "qrCode.png";
		String flag = request.getParameter("flag");

		String card_url = "http://mysweetlove.org/url/" + cvo.getUrl() + ".jsp";
		/*
		 * String card_url= "http://localhost:8080/Final_WeddingCard/url/" +
		 * cvo.getUrl() + ".jsp";
		 */

		if (flag != null) {// 청첩장 수정
			System.out.println("청첩장 수정 고고고");
			cardService.modifyCard(cvo);
		} else {
			// =============================== QR Code

			// QRUtil.makeQR(file_url.toString(), 300, 300, file_path,
			// file_name);
			QRUtil.makeQR(card_url, 300, 300, file_path, file_name);
			cardService.createCard(cvo);
			cvo = cardService.getCard(url); // cardNo 알기 위해
		}
		System.out.println("cardVo===" + cvo);

		String format = "<%@ page language='java' contentType='text/html; charset=UTF-8'\n"
				+ "pageEncoding='UTF-8' isELIgnored='false'%><%@ taglib prefix='c'\n uri='http://java.sun.com/jsp/jstl/core'%>\n"
				+ "<%@ taglib prefix='fn' uri='http://java.sun.com/jsp/jstl/functions' %>"
				+ "<!DOCTYPE html>\n<html>\n<head>\n<meta charset='UTF-8'>\n<title>Insert title here</title></head>\n<body>\n";

		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(
				new FileOutputStream(file_url), "UTF-8"));
		BufferedWriter bw_guestBook = new BufferedWriter(
				new OutputStreamWriter(new FileOutputStream(file_guestBook),
						"UTF-8"));

		try {

			bw.write(format);
			bw.write("<jsp:include page='template/" + template
					+ ".jsp' flush='true'>\n");

			String[] onlyDate = cardDate.split(" "); // 년월일만
			// 여기에 정보들 추가하면 됨됨
			bw.write("<jsp:param value='" + groomName
					+ "' name='groomName'/>\n" + "<jsp:param value='"
					+ groomTel + "' name='groomTel'/>\n" + "<jsp:param value='"
					+ brideName + "' name='brideName'/>\n"
					+ "<jsp:param value='" + brideTel + "' name='brideTel'/>\n"
					+ "<jsp:param value='" + cardContext
					+ "' name='cardContext'/>\n" + "<jsp:param value='"
					+ onlyDate[0] + "' name='cardDate'/>\n"
					+ "<jsp:param value='" + hour + "' name='hour'/>\n"
					+ "<jsp:param value='" + min + "' name='min'/>\n"
					+ "<jsp:param value='" + ampm + "' name='ampm'/>\n"
					+ "<jsp:param value='" + request.getParameter("dDay")
					+ "' name='dDay'/>\n" + "<jsp:param value='"
					+ cvo.getHallName() + "' name='hallName'/>\n"
					+ "<jsp:param value='" + cvo.getHallLocation()
					+ "' name='hallLocation'/>\n" + "<jsp:param value='"
					+ request.getParameter("photoBookNo")
					+ "' name='photoBookNo'/>\n" + "<jsp:param value='"
					+ request.getParameter("photoBookImg")
					+ "' name='photoBookImg'/>\n" + "<jsp:param value='"
					+ request.getParameter("photoBookComment")
					+ "' name='photoBookComment'/>\n" + "<jsp:param value='"
					+ rvo.getMemberId() + "' name='memberId'/>\n"
					+ "<jsp:param value='"
					+ cvo.getUrl()
					+ "' name='url'/>\n"
					+ "<jsp:param value='"
					+ cvo.getCardNo()
					+ "' name='cardNo'/>\n"
					// 이미지 업로드 안한경우라도 "" 들어가게 지정해준다.
					+ "<jsp:param value='" + mainImgName
					+ "' name='imgSrc'/>\n" + "<jsp:param value='"
					+ groomImgName + "' name='imgGroom'/>\n"
					+ "<jsp:param value='" + brideImgName
					+ "' name='imgBride'/>\n");

			// jsp 닫음
			bw.write("</jsp:include>\n</body>\n</html>\n");

			// =====================방명록=======================

			bw_guestBook.write(format);
			bw_guestBook
					.write("<jsp:include page='../template/guestBookSample.jsp' flush='true'>\n");
			bw_guestBook.write("<jsp:param value='" + cvo.getCardNo()
					+ "' name='cardNo'/>\n" + "<jsp:param value='"
					+ rvo.getMemberId() + "' name='memberId'/>\n");
			bw_guestBook.write("</jsp:include>\n</body>\n</html>\n");// 닫는 태그

			bw_guestBook.close();
			bw.close();

		} catch (IOException e) {
			e.printStackTrace();
		}

		return new ModelAndView("redirect:/card.do?command=getAllCards");
	}

	public ModelAndView uploadImage(HttpServletRequest request,
			HttpServletResponse response, CardVO cvo) throws Exception {

		System.out.println("uploadImage controll");
		String flag = request.getParameter("flag");
		System.out.println(cvo);
		MemberVO mvo = (MemberVO) request.getSession().getAttribute("mvo");

		if ("mainImage".equals(flag)) {
			MultipartFile imgFile = cvo.getImgFile();
			File file = new File(path + "temp_" + mvo.getMemberId() + "//"
					+ imgFile.getOriginalFilename());
			if (!file.getParentFile().exists()) {
				// 이미지 저장할 temp 디렉토리 만듬
				file.getParentFile().mkdirs();
			}

			File destFile = new File(file.getPath());
			imgFile.transferTo(destFile);
		} else if ("imgGroom".equals(flag)) {
			MultipartFile imgGroom = cvo.getImgGroom();
			File file = new File(path + "temp_" + mvo.getMemberId() + "//"
					+ imgGroom.getOriginalFilename());
			if (!file.getParentFile().exists()) {
				// 이미지 저장할 temp 디렉토리 만듬
				file.getParentFile().mkdirs();
			}
			File destFile = new File(file.getPath());
			imgGroom.transferTo(destFile);
		} else if ("imgBride".equals(flag)) {
			MultipartFile imgBride = cvo.getImgBride();
			File file = new File(path + "temp_" + mvo.getMemberId() + "//"
					+ imgBride.getOriginalFilename());
			if (!file.getParentFile().exists())// 이미지 저장할 temp 디렉토리 만듬
				file.getParentFile().mkdirs();
			File destFile = new File(file.getPath());
			imgBride.transferTo(destFile);
		}
		return new ModelAndView("JsonView");
	}

	public ModelAndView uploadImageByModifyCard(HttpServletRequest request,
			HttpServletResponse response, CardVO cvo) throws Exception {

		System.out.println("uploadImageByModifyCard controll");
		String flag = request.getParameter("flag");
		System.out.println(cvo);
		MemberVO mvo = (MemberVO) request.getSession().getAttribute("mvo");

		if ("mainImage".equals(flag)) {
			MultipartFile imgFile = cvo.getImgFile();
			File file = new File(path + cvo.getUrl() + "//"
					+ imgFile.getOriginalFilename());
			File destFile = new File(file.getPath());
			imgFile.transferTo(destFile);
		} else if ("imgGroom".equals(flag)) {
			MultipartFile imgGroom = cvo.getImgGroom();
			File file = new File(path + cvo.getUrl() + "//"
					+ imgGroom.getOriginalFilename());
			File destFile = new File(file.getPath());
			imgGroom.transferTo(destFile);
		} else if ("imgBride".equals(flag)) {
			MultipartFile imgBride = cvo.getImgBride();
			File file = new File(path + cvo.getUrl() + "//"
					+ imgBride.getOriginalFilename());
			if (!file.getParentFile().exists())// 이미지 저장할 temp 디렉토리 만듬
				file.getParentFile().mkdirs();
			File destFile = new File(file.getPath());
			imgBride.transferTo(destFile);
		}
		return new ModelAndView("JsonView");
	}

	// ///////////////////////////////////////////////////////////////
	public ModelAndView getAllCards(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("getAllCards 컨트롤러");
		MemberVO rvo = (MemberVO) request.getSession().getAttribute("mvo");

		if (rvo != null) {
			System.out.println("memberId::" + rvo.getMemberId());
			List<CardVO> cardList = cardService.getAllCards(rvo.getMemberId());
			System.out.println("card목록::" + cardList);
			return new ModelAndView("weddingCard/cardList", "cardList",
					cardList);
		} else {
			return new ModelAndView("login/loginregister");
		}
	}

	public ModelAndView getCard(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("getCard 컨트롤러");

		String url = request.getParameter("url");
		System.out.println("url 값 :: " + url);
		CardVO rvo = (CardVO) cardService.getCard(url);
		System.out.println(rvo);
		request.setAttribute("cvo", rvo);
		System.out.println("cvo set!!!!!!!!!!!!!!!!!");
		return new ModelAndView("url/" + url);
	}

	public ModelAndView urlCheck(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		boolean flag = false;
		System.out.println("urlCheck 컨트롤러");
		String url = request.getParameter("url");
		System.out.println(url);

		flag = cardService.urlCheck(url);
		System.out.println(flag);

		request.setAttribute("flag", flag);
		System.out.println("flag 값 넘김");
		return new ModelAndView("JsonView", "flag", flag);

	}

	public ModelAndView serachHallLocation(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("serachHallLocation controll");

		return new ModelAndView("JsonView", "hallLocation",
				request.getParameter("hallLocation"));
	}

	// ///////////////////// sendUrl //////////////////
	public ModelAndView sendUrl(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("sendUrl controll");

		String ACCOUNT_SID = AccessId.ACCOUNT_SID;
		String AUTH_TOKEN = AccessId.AUTH_TOKEN;

		String url = request.getParameter("url");
		MemberVO rvo = (MemberVO) request.getSession().getAttribute("mvo");
		// 폰번호 10~~~ 형식으로
		String phoneNumber = rvo.getPhoneNumber();
		phoneNumber = phoneNumber.trim();
		phoneNumber = phoneNumber.substring(1);

		String msg = rvo.getName() + "님, 초대장 URL : "
				+ "http://localhost:8888/Final_WeddingCard_2th/url/" + url
				+ "jsp"; // 주소 나중에

		Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

		Message message = new MessageCreator(ACCOUNT_SID, new PhoneNumber("+82"
				+ phoneNumber), // TO number
				new PhoneNumber("+13105043223"), // From Twilio number
				msg).execute();

		return new ModelAndView("JsonView");
	}

	// 청첩장 수정화면으로 이동
	public ModelAndView linkModifyCard(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("linkModifyCard controll");
		String url = request.getParameter("url");
		CardVO cardVO = cardService.getCard(url);
		System.out.println("modify cardVo::" + cardVO);
		// 신랑신부 정보 처리
		String[] brideInfo = cardVO.getBrideInfo().split("`");
		request.setAttribute("brideName", brideInfo[0]);
		request.setAttribute("brideTel", brideInfo[1]);
		String[] groomInfo = cardVO.getGroomInfo().split("`");
		request.setAttribute("groomName", groomInfo[0]);
		request.setAttribute("groomTel", groomInfo[1]);

		// 예식날짜 처리
		String[] date = cardVO.getCardDate().split(" ");
		cardVO.setCardDate(date[0]); //날짜
		String[] time = date[1].split(":");
		 int hour_int = Integer.parseInt(time[0]);
		if(hour_int > 12){ // 시에 따라 AM PM 처리
			request.setAttribute("hour", String.valueOf(hour_int -12));
			request.setAttribute("ampm", "PM");
		}else{
			request.setAttribute("hour", String.valueOf(hour_int));
			request.setAttribute("ampm", "AM");
		}
		request.setAttribute("min", time[1]);
		System.out.println("date::" + date[0]+"\n hour::"+time[0]+"\nmin::"+time[1] );
		
		// 청첩장 만들때 업로드한 이미지 처리
		if (cardVO.getMainImage() != null) {
			String[] images = cardVO.getMainImage().split("`");
			for (String s : images) {
				System.out.println(s);
			}
			if (images.length == 2) {// 상단이미지만 업로드한 경우
				request.setAttribute("imgSrc", images[1]);
			} else if (images.length == 4) {// 신랑신부만 업로드한 경우
				request.setAttribute("imgGroomSrc", images[1]);
				request.setAttribute("imgBrideSrc", images[3]);
			}
			if (images.length == 6) {// 상단이미지, 신랑신부 다 업로드한 경우
				request.setAttribute("imgSrc", images[1]);
				request.setAttribute("imgGroomSrc", images[3]);
				request.setAttribute("imgBrideSrc", images[5]);
			}
		}

		// 청첩장만들때 포토북 이미지들 미리보기화면에 띄우기 위해서 포토북VO set
		PhotoBookVO rpbvo = cardVO.getPhotobookVO();
		if (rpbvo != null) {
			PhotoBookVO pbvo = photoBookService.getPhotoBookByNo(String
					.valueOf(rpbvo.getBookNo()));
			request.setAttribute("pbvo", pbvo);
		}

		return new ModelAndView("weddingCard/weddingCardModify", "cardVO",
				cardVO);
	}

	public ModelAndView deleteCard(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("deleteCard controll");
		String cardNo = request.getParameter("cardNo");
		String url = request.getParameter("url");
		cardNo.trim();
		url.trim();
		String[] cardNos = cardNo.split(" ");
		String[] urls = url.split(" ");

		for (int i = 0; i < urls.length; i++) {// 선택한 청첩장들 삭제
			// url 하위 이미지 게스트 북들 삭제
			File file_guestBook = new File(path + urls[i] + "/guestBook.jsp");

			cardService.deleteCard(Integer.parseInt(cardNos[i])); // db에서 삭제

			// url 삭제
			File file_url = new File(path + urls[i] + ".jsp");
			System.out.println(file_url.delete());

			if (file_guestBook.getParentFile().exists()) {
				File[] tempFiles = file_guestBook.getParentFile().listFiles();
				if (tempFiles.length > 0) {
					System.out.println(tempFiles.length);
					for (File delFile : tempFiles) {
						delFile.delete();
					}
					System.out.println("dir삭제:"
							+ file_guestBook.getParentFile().delete());
				}
			}
		}// for
		return new ModelAndView("redirect:/card.do?command=getAllCards");
	}

	////===============================================================
	// ///////////////////// GuestBook///////////////////////////
	public ModelAndView linkGuestBook(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("linkGuestBook controll");
		String url = request.getParameter("url");
		CardVO cardVO = cardService.getCard(url);
		System.out.println("cardvo::" + cardVO);

		List<CardcommentVO> commentList = cardService.getAllCardComments(cardVO
				.getCardNo());
		return new ModelAndView("url/" + url + "/guestBook", "commentList",
				commentList);
	}

	public ModelAndView writeCardComment(HttpServletRequest request,
			HttpServletResponse response, CardcommentVO comvo) throws Exception {
		System.out.println("writeCardComment 컨트롤러");
		String url = request.getParameter("url");

		CardVO cardVO = cardService.getCard(url);
		comvo.setCardVO(cardVO);
		if (request.getParameter("passwordNoLogin") != null)
			comvo.setPassword(request.getParameter("passwordNoLogin"));

		System.out.println("vo::" + comvo);
		cardService.writeCardComment(comvo);
		comvo.setCardCommentNo(comvo.getCardCommentNo());
		return new ModelAndView("redirect:/card.do?command=linkGuestBook&&url="
				+ url);
	}
	public ModelAndView deleteCardCommentByOwner(HttpServletRequest request,
			HttpServletResponse response, CardcommentVO comvo) throws Exception {
		System.out.println("deleteCardCommentByOwner 컨트롤러");
		String url = request.getParameter("url");
		comvo.setCardCommentNo(Integer.parseInt(request.getParameter("commentNo")));
		/*CardVO cardVO = cardService.getCard(url);
		comvo.setCardVO(cardVO);
		if (request.getParameter("passwordNoLogin") != null)
			comvo.setPassword(request.getParameter("passwordNoLogin"));

		System.out.println("vo::" + comvo);*/
		cardService.deleteCardCommentByOwner(comvo);

		return new ModelAndView("redirect:/card.do?command=linkGuestBook&&url="
				+ url);
	}
	public ModelAndView getAllCardComments(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		System.out.println("getAllCardComments 컨트롤러");
		int cardNo = Integer.parseInt(request.getParameter("cardNo"));

		List<CardcommentVO> commentList = cardService
				.getAllCardComments(cardNo);

		request.setAttribute("comments", commentList);
		System.out.println(commentList);
		return new ModelAndView("JsonView", "commentList", commentList);
	}

}
