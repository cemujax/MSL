package model.admin;

public class PagingBean {
	private int totalContent;
	public int getNowPage() {
		return nowPage;
	}
	
	private int nowPage=1;
	
	private int numberOfContentPerPage=CommonConstants.CONTENT_NUMBER_PER_PAGE;
	
	private int numberOfPageGroup=CommonConstants.PAGEGROUP_NUMBER_PER_PAGE;
	
	public PagingBean(int totalContent, int nowPage) {
		super();
		this.totalContent = totalContent;
		this.nowPage = nowPage;
	}
	
	public int getTotalPage(){
		int num=totalContent%this.numberOfContentPerPage;
		int totalPage=0;
		if(num==0)
			totalPage=totalContent/this.numberOfContentPerPage;
		else
			totalPage=totalContent/this.numberOfContentPerPage+1;
		return totalPage;
	}
	
	public int getTotalPageGroup(){
		int num=this.getTotalPage()%this.numberOfPageGroup;
		int totalGroup=0;
		if(num==0)
			totalGroup=this.getTotalPage()/this.numberOfPageGroup;
		else
			totalGroup=this.getTotalPage()/this.numberOfPageGroup+1;
		return totalGroup;
	}
	
	public int getNowPageGroup(){
		int num=this.nowPage%this.numberOfPageGroup;
		int nowGroup=0;
		if(num==0)
			nowGroup=this.nowPage/this.numberOfPageGroup;
		else
			nowGroup=this.nowPage/this.numberOfPageGroup+1;
		return nowGroup;
	}
	
	public int getStartPageOfPageGroup(){
		int start=this.numberOfPageGroup*(this.getNowPageGroup()-1)+1;
		return start;
	}
	
	public int getEndPageOfPageGroup(){
		int end=this.numberOfPageGroup*this.getNowPageGroup();
		if(end>this.getTotalPage()){
			end=this.getTotalPage();
		}
		return end;
	}
	
	public boolean isPreviousPageGroup(){
		boolean flag=false;
		if(this.getNowPageGroup()>1)
			flag=true;
		return flag;
	}
	
	public boolean isNextPageGroup(){
		boolean flag=false;
		if(this.getNowPageGroup()<this.getTotalPageGroup())
			flag=true;
		return flag;
	}
	public static void main(String args[]){
		PagingBean bean=new PagingBean(26,6);
		System.out.println(bean.getTotalPage()+"?Ž˜?´ì§?");
		System.out.println(bean.getTotalPageGroup()+"?Ž˜?´ì§? ê·¸ë£¹");
		System.out.println(bean.getNowPageGroup()+" ?˜„?ž¬ ?Ž˜?´ì§? ê·¸ë£¹");
	}
}











