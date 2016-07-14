package model.card;

import org.springframework.web.multipart.MultipartFile;

public class CardTemplateVO {
	private int cardTemplateNo; // cardTemplate_no
	private String templateName;
	private String templateType;
	   
	private MultipartFile urlTemplate;
   
	public CardTemplateVO() {}

	public CardTemplateVO(int cardTemplateNo, String templateName,
			String templateType) {
		super();
		this.cardTemplateNo = cardTemplateNo;
		this.templateName = templateName;
		this.templateType = templateType;
	}

	public CardTemplateVO(int cardTemplateNo, String templateName,
			String templateType, MultipartFile urlTemplate) {
		super();
		this.cardTemplateNo = cardTemplateNo;
		this.templateName = templateName;
		this.templateType = templateType;
		this.urlTemplate = urlTemplate;
	}

	public int getCardTemplateNo() {
		return cardTemplateNo;
	}

	public void setCardTemplateNo(int cardTemplateNo) {
		this.cardTemplateNo = cardTemplateNo;
	}

	public String getTemplateName() {
		return templateName;
	}

	public void setTemplateName(String templateName) {
		this.templateName = templateName;
	}

	public String getTemplateType() {
		return templateType;
	}

	public void setTemplateType(String templateType) {
		this.templateType = templateType;
	}

	public MultipartFile getUrlTemplate() {
		return urlTemplate;
	}

	public void setUrlTemplate(MultipartFile urlTemplate) {
		this.urlTemplate = urlTemplate;
	}

	@Override
	public String toString() {
		return "CardTemplateVO [cardTemplateNo=" + cardTemplateNo
				+ ", templateName=" + templateName + ", templateType="
				+ templateType + ", urlTemplate=" + urlTemplate + "]";
	}


}