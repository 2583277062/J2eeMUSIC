package service.imp;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import domain.Comment;
import service.inter.CommentServiceInter;

@Transactional
public class CommentService extends BasicServiceAdapter implements CommentServiceInter {

	@Override
	public Comment getById(int i) {
		// TODO Auto-generated method stub
		return (Comment) sessionFactory.getCurrentSession().get(Comment.class, i);
	}

	@Override
	public List<Comment> getByPostId(int postId) {
		// TODO Auto-generated method stub
		String hql="from Comment where post.id="+postId;
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}

	@Override
	public List<Comment> getByUserId(int userId) {
		// TODO Auto-generated method stub
		String hql="from Comment where user.id="+userId;
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}
}
