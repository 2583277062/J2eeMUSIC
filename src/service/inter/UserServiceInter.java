package service.inter;

import java.util.List;

import domain.Music;
import domain.User;

public interface UserServiceInter extends BasicServiceInter {

	public User checkUser(User u);
	public List<User> getUsers();
	public void addMany();
	public void deleteById(int userId);
	public List<User> getUsersByStr(String str);
}
