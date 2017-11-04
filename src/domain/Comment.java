package domain;

import java.util.Date;
import java.util.Random;

public class Comment {

	private Integer id;
	private User user;				//������
	private Post post;				//���۵�����
	private String content;			//����		256
	private java.util.Date time;	//����ʱ��
	
	public static Comment randomComment() {
		Random r=new Random();
		Comment c=new Comment();
		c.setUser(new User(1+r.nextInt(20)));
		c.setPost(new Post(1+r.nextInt(20)));
		c.setContent(User.randomSign(50));
		c.setTime(new Date());
		return c;
	}
	
	public Comment() {
		
	}
	
	public Comment(int id) {
		this.id=id;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Post getPost() {
		return post;
	}
	public void setPost(Post post) {
		this.post = post;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public java.util.Date getTime() {
		return time;
	}
	public void setTime(java.util.Date time) {
		this.time = time;
	}
	
}
