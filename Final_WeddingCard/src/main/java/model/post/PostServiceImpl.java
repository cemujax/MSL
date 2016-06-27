package model.post;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;


public class PostServiceImpl implements PostService{
	private PostDao postDao;
	private PostCommentService postCommentService;

	public void setPostDao(PostDao postDao) {
		this.postDao = postDao;
	}
	
	public void setPostCommentService(PostCommentService postCommentService) {
		this.postCommentService = postCommentService;
	}
	
	public void writePost(PostVO pvo) {
		postDao.writePost(pvo);
	}

	public void modifyPost(PostVO pvo) {
		postDao.modifyPost(pvo);
	}

	public void deletePost(int postNo) {
		postDao.deletePost(postNo);
	}

	public ListVO getPostList(HashMap<String, String> map) throws SQLException{
		if(map.get("page") == null)
			map.put("page", "1");
		
		System.out.println("page = "+ map.get("page"));
		List<PostVO> postList = postDao.getPostList(map);
		PagingBean pb = new PagingBean(postDao.totalCount(map.get("kind")),
				Integer.parseInt(map.get("page")));
		
		System.out.println("pagingBean getNowPageGroup::"+pb.getNowPageGroup());
		System.out.println("pagingBean getNowPage::"+pb.getNowPage());
		
		ListVO listVO = new ListVO(postList, pb); 
		
		return listVO;
	}

	public PostVO getPostByNo(int postNo) {
		return postDao.getPostByNo(postNo);
	}

	public List<PostCommentVO> getCommentList(String postNo) {
		return postCommentService.getCommentList(postNo);
	}

}
