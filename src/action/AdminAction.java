package action;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import domain.Music;
import domain.Post;
import domain.User;
import service.inter.MusicServiceInter;
import service.inter.PostServiceInter;
import service.inter.UserServiceInter;

public class AdminAction {
	
	private File[] musicFile;
	private String[] musicFileFileName;
	private String str;
	
	@Resource
	UserServiceInter userServiceInter;
	
	@Resource
	PostServiceInter postServiceInter;
	
	@Resource
	MusicServiceInter musicServiceInter;
	
	public UserServiceInter getUserServiceInter() {
		return userServiceInter;
	}

	public void setUserServiceInter(UserServiceInter userServiceInter) {
		this.userServiceInter = userServiceInter;
	}
	
	public File[] getMusicFile() {
		return musicFile;
	}

	public void setMusicFile(File[] musicFile) {
		this.musicFile = musicFile;
	}

	public String[] getMusicFileFileName() {
		return musicFileFileName;
	}

	public void setMusicFileFileName(String[] musicFileFileName) {
		this.musicFileFileName = musicFileFileName;
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}

	private void user() {
		List<User> users;
		if(this.str==null) {
			users=userServiceInter.getUsers();
		}else {
			users=userServiceInter.getUsersByStr(this.str);
		}
		ServletActionContext.getRequest().getSession().setAttribute("users", users);
		ServletActionContext.getRequest().getSession().setAttribute("userm", new Boolean(true));
		ServletActionContext.getRequest().getSession().setAttribute("musicm", new Boolean(false));
		ServletActionContext.getRequest().getSession().setAttribute("postm", new Boolean(false));
	}
	
	private void post() {
		List<Post> posts;
		if(this.str==null) {
			posts=postServiceInter.getPosts();
		}else {
			posts=postServiceInter.getPostsByStr(this.str);
		}
		ServletActionContext.getRequest().getSession().setAttribute("posts", posts);
		ServletActionContext.getRequest().getSession().setAttribute("userm", new Boolean(false));
		ServletActionContext.getRequest().getSession().setAttribute("musicm", new Boolean(false));
		ServletActionContext.getRequest().getSession().setAttribute("postm", new Boolean(true));
	}
	
	private void music() {
		List<Music> musics;
		if(this.str==null) {
			musics=musicServiceInter.getMusics();
		}else {
			musics=musicServiceInter.getMusicsByStr(this.str);
		}
		ServletActionContext.getRequest().getSession().setAttribute("musics",musics);
		ServletActionContext.getRequest().getSession().setAttribute("userm", new Boolean(false));
		ServletActionContext.getRequest().getSession().setAttribute("musicm", new Boolean(true));
		ServletActionContext.getRequest().getSession().setAttribute("postm", new Boolean(false));
	}
	
	public String exit() {
		return "exit";
	}

	//jsp入口
	public String userManage() {
		user();
		return "admin";
	}
	
	//jsp入口
	public String postManage() {
		post();
		return "admin";
	}
	
	//jsp入口
	public String musicManage() {
		music();
		return "admin";
	}
	
	public String deleteUser() {
		int id=Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));
//		userServiceInter.deleteById(id);
		User u=(User) userServiceInter.getById(id);
		
//		User u=new User(id);
//		u.setPassword("a");
//		u.setType(true);
		userServiceInter.delete(u);
		user();
		return "admin";
	}
	
	public String deletePost() {
		int id=Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));
		Post p=(Post)postServiceInter.getById(id);
		postServiceInter.delete(p);
		post();
		return "admin";
	}
	
	public String addMusic() {
		for(int i=0;i<musicFile.length;i++) {
			Music m=new Music();
			m.setName(this.musicFileFileName[i].split("\\.")[0]);
			m.setType("classic");
			musicServiceInter.add(m);
			String path="E:/music/classic";
			if(postServiceInter.upLoadFile(this.musicFile[i], this.musicFileFileName[i], path)==false)
				return "error";
		}
		music();
		return "admin";
	}
	
	public String deleteMusic() {
		int id=Integer.parseInt(ServletActionContext.getRequest().getParameter("id"));
		Music m=(Music) musicServiceInter.getById(id);
		musicServiceInter.delete(m);
		String path="E:/music/"+m.getType()+"/"+m.getName();
		File file=new File(path);
		file.delete();
		music();
		return "admin";
	}
}
