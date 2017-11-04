package service.imp;

import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import domain.Comment;
import domain.User;
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
		String hql="from Comment where postId="+postId;
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}
	
	public List<Comment> getByPostIdcodec(int postId){
		String hql="from Comment comment where postId="+postId+" order by comment.id desc";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setMaxResults(5);
		List<Comment> comments=query.list();
		return comments;
	}

	@Override
	public List<Comment> getByUserId(int userId) {
		// TODO Auto-generated method stub
		String hql="from Comment where user.id="+userId;
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}
	
	public void addMany() {
		Comment c;
		for(int i=0;i<100;i++) {
			c=Comment.randomComment();
			this.add(c);
		}
	}
	
	//测试使用
	public void updateMany() {
		Comment c;
		Date time=new Date();
		for(int i=0;i<300;i++) {
			c=(Comment) sessionFactory.getCurrentSession().get(Comment.class, i+1);
			c.setTime(time);
			sessionFactory.getCurrentSession().update(c);
		}
	}
}
