package service.imp;

import java.io.File;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.hibernate.Query;
import org.springframework.transaction.annotation.Transactional;

import domain.Post;
import domain.User;
import service.inter.PostServiceInter;

@Transactional
public class PostService extends BasicServiceAdapter implements PostServiceInter {
	
	public static final int POST_NUM_PER_PAGE=4;

	@Override
	public Post getById(int postId) {
		// TODO Auto-generated method stub
		return (Post) sessionFactory.getCurrentSession().get(Post.class, postId);
	}
	
	@Override
	public void addMany() {
		// TODO Auto-generated method stub
		Post p;
		for(int i=0;i<100;i++) {
			p=Post.randomPost();
			this.add(p);
		}
	}
	
	public List<Post> getLatestPosts(int number){
//		String hql="from Post post order by post.time desc";
		String hql="from Post order by id desc";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setMaxResults(number);
		List<Post> posts=query.list();
		return posts;
	}

	@Override
	public List<Post> getPostsByUserId(int userId) {
		// TODO Auto-generated method stub

		String hql="from Post where userId=?";
		List<Post> posts=sessionFactory.getCurrentSession().createQuery(hql).setParameter(0, userId).list();
		
		return posts;
	}

	@Override
	public List<Post> getPostsCommended(int userId) {
		// TODO Auto-generated method stub
		String hql="select c.post from Comment as c where c.user.id=?";
		Query query=sessionFactory.getCurrentSession().createQuery(hql).setParameter(0, userId);
		List<Post> posts=query.list();
		return posts;
	}
	
	public boolean upLoadFile(File file,String fileName,String path) {
		try {
			File destFile=new File(path,fileName);
			FileUtils.copyFile(file, destFile);
			file.delete();
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
		return true;
	}
}
