package service.inter;

import domain.User;

public interface UserServiceInter extends BasicServiceInter {

	public User checkUser(User u);
}
