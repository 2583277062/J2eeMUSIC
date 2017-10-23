package service.inter;

import java.util.List;

import domain.Comment;

public interface CommentServiceInter extends BasicServiceInter {

	public List<Comment> getByPostId(int postId);
	public List<Comment> getByUserId(int userId);
}
