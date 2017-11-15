import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import service.imp.UserService;
import service.inter.CommentServiceInter;
import service.inter.PostServiceInter;
import service.inter.UserServiceInter;

public class test {
	public static void main(String args[]) {
		ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
		UserServiceInter us=(UserServiceInter) ac.getBean("userService");
		us.addMany();
		PostServiceInter ps=(PostServiceInter) ac.getBean("postService");
		ps.addMany();
		CommentServiceInter cs=(CommentServiceInter) ac.getBean("commentService");
		cs.addMany();
		
//		String s="a.b";
//		System.out.println(s.split(".").length);
	}
}
