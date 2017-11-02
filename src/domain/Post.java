package domain;

import java.util.Date;
import java.util.Set;

public class Post {

	private int id;
	private String title;			//帖子标题	32
	private User user;				//作者
	private String content;			//内容		4096
	private Date time;				//发帖时间
	private String musicName;		//音乐名
	private String type;			//帖子类型
	
	private Set<Comment> comments;
	
	public Post(){
		
	}
	public Post(String title, User user, String content, Date time, String musicName, String type) {
		this.title = title;
		this.user = user;
		this.content = content;
		this.time = time;
		this.musicName=musicName;
		this.type=type;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public String getMusicName() {
		return musicName;
	}
	public void setMusicName(String musicName) {
		this.musicName = musicName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Set<Comment> getComments() {
		return comments;
	}
	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}
	
}
