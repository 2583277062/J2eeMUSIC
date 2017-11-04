import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import service.imp.UserService;
import service.inter.CommentServiceInter;
import service.inter.PostServiceInter;
import service.inter.UserServiceInter;

public class test {
	public static void main(String args[]) {
		ApplicationContext ac=new ClassPathXmlApplicationContext("applicationContext.xml");
//		CommentServiceInter cs=(CommentServiceInter) ac.getBean("commentService");
//		cs.updateMany();
//		PostServiceInter ps=(PostServiceInter) ac.getBean("postService");
//		ps.addMany();
//		UserServiceInter us=(UserServiceInter) ac.getBean("userService");
//		us.addMany();
	}

}
