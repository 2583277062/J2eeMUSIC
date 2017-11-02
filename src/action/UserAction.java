package action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

import domain.Collection;
import domain.Post;
import domain.User;
import service.inter.CollectionServiceInter;
import service.inter.PostServiceInter;
import service.inter.UserServiceInter;

public class UserAction{
	
	private int userId;
	private String password;
	
	@Resource
	UserServiceInter userServiceInter;
	@Resource
	PostServiceInter postServiceInter;
	@Resource
	CollectionServiceInter collectionServiceInter;

	public void setUserServiceInter(UserServiceInter userServiceInter) {
		this.userServiceInter = userServiceInter;
	}

	public void setPostServiceInter(PostServiceInter postServiceInter) {
		this.postServiceInter = postServiceInter;
	}

	public void setCollectionServiceInter(
			CollectionServiceInter collectionServiceInter) {
		this.collectionServiceInter = collectionServiceInter;
	}

//	public ActionForward login(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) throws Exception {
//		// TODO Auto-generated method stub
//		UserForm uf=(UserForm) form;
//		User u=new User();
//		u.setId(Integer.parseInt(uf.getId()));
//		u.setPassword(uf.getPassword());
//		u=userServiceInter.checkUser(u);
////		System.out.println(u.getBirthday());
//		if(u!=null){
//			request.getSession().setAttribute("user", u);
//			List<Post> posts=postServiceInter.getLatestPosts(4);
//			request.getSession().setAttribute("posts", posts);
//			return mapping.findForward("goIndex");
//		}else{
//			return mapping.findForward("goLogin");
//		}
//	}
	
	public String login() {
		User u=new User();
		u.setId(this.userId);
		u.setPassword(this.password);
		u=userServiceInter.checkUser(u);
		if(u==null) {
			return "error";
		}
		ServletActionContext.getRequest().getSession().setAttribute("user", u);
		return "success";
	}
	
	public String goLogin() {
		return "login";
	}
	
	public String goRegister() {
		return "register";
	}
	
	public String exit() {
		ServletActionContext.getRequest().getSession().removeAttribute("user");
		return "exit";
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
//	public ActionForward goIndex(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) throws Exception {
//		// TODO Auto-generated method stub
//		List<Post> posts=postServiceInter.getLatestPosts(4);
//		request.getSession().setAttribute("posts", posts);
//		return mapping.findForward("goIndex");
//	}

//	public ActionForward logout(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) throws Exception {
//		// TODO Auto-generated method stub
//		request.getSession().removeAttribute("user");
//		return mapping.findForward("goLogin");
//	}
	
//	public ActionForward goPostPanel(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) throws Exception {
//		// TODO Auto-generated method stub
//		//Ĭ���Ѿ���¼�����Բ�ѯһ��������null
//		int userId=((User) request.getSession().getAttribute("user")).getId();
//		List<Post> posts=postServiceInter.getPostsByUserId(userId);
//		request.getSession().setAttribute("posts", posts);
//		return mapping.findForward("goPostPanel");
//	}
	
//	public ActionForward updateInformation(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) throws Exception {
//		UserForm uf=(UserForm) form;
//		Date birthday=new java.text.SimpleDateFormat("yyyy-MM-dd").parse(uf.getBirthday());
//		User u=new User();
//		u.setId(Integer.parseInt(uf.getId()));
//		u.setSign(uf.getSign());
//		u.setSex(uf.getSex());
//		u.setBirthday(birthday);
//		u.setLocation(uf.getLocation());
//		u.setEmail(uf.getEmail());
//		userServiceInter.update(u);
//		User uu=(User) request.getSession().getAttribute("user");
//		uu.setSign(uf.getSign());
//		uu.setSex(uf.getSex());
//		uu.setBirthday(birthday);
//		uu.setLocation(uf.getLocation());
//		uu.setEmail(uf.getEmail());
//		request.getSession().setAttribute("user", uu);
//		return mapping.findForward("goIndex");
//	}
	
//	public ActionForward register(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) throws Exception {
//		UserForm uf=(UserForm) form;
//		User u=new User();
//		u.setUsername(uf.getUsername());
//		u.setPassword(uf.getPassword());
//		userServiceInter.add(u);
//		return mapping.findForward("goLogin");
//	}

//	public ActionForward postCommended(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) throws Exception {
//		int userId=((User)(request.getSession().getAttribute("user"))).getId();
//		List<Post> posts=postServiceInter.getPostsCommended(userId);
//		request.getSession().setAttribute("posts", posts);
//		return mapping.findForward("goPostPanel");
//	}
	
//	public ActionForward goCollectionPanel(ActionMapping mapping, ActionForm form,
//			HttpServletRequest request, HttpServletResponse response) throws Exception {
//		int userId=((User)(request.getSession().getAttribute("user"))).getId();
//		List<Collection> collections=collectionServiceInter.getByUserId(userId);
//		request.getSession().setAttribute("collections", collections);
//		return mapping.findForward("goCollectionPanel");
//	}
	
}
