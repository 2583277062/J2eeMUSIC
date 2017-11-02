package domain;

import java.util.Date;
import java.util.Set;

public class User {

	private int id;
	private	String password;			//����	32	not-null
	private Boolean type;				//true�û���false����Ա	not-null
	private String name;				//�û���	16
	private String sign;				//ǩ��	64
	private Boolean sex;				//true�У�falseŮ
	private Date birthday;				//����
	private String location;			//���ڵ�	64
	private String email;				//����	32
	
	private Set<Post> posts;				//���з���
	private Set<Comment> comments;			//��������
	private Set<Collection> collections;	//�����ղ�
	private Set<Music> musics;				//�ղص�����
	
	public User(){
		
	}
	public User(String password, Boolean type, String username, String sign,
			Boolean sex, Date birthday, String location, String email) {
		this.password = password;
		this.type = type;
		this.name = username;
		this.sign = sign;
		this.sex = sex;
		this.birthday = birthday;
		this.location = location;
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int userId) {
		this.id = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Boolean getType() {
		return type;
	}
	public void setType(Boolean type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String username) {
		this.name = username;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public Boolean getSex() {
		return sex;
	}
	public void setSex(Boolean sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Set<Post> getPosts() {
		return posts;
	}
	public void setPosts(Set<Post> posts) {
		this.posts = posts;
	}
	public Set<Comment> getComments() {
		return comments;
	}
	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}
	public Set<Collection> getCollections() {
		return collections;
	}
	public void setCollections(Set<Collection> collections) {
		this.collections = collections;
	}
	
	public Set<Music> getMusics() {
		return musics;
	}
	public void setMusics(Set<Music> musics) {
		this.musics = musics;
	}
	public void show(){
		System.out.println("�û�����"+this.getName()+"�����䣺"+this.getEmail());
	}

}
