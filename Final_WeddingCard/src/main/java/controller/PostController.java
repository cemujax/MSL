package controller;

import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import model.post.PostService;

public class PostController extends MultiActionController{
	private PostService postService;

	public void setPostService(PostService postService) {
		this.postService = postService;
	}

}
