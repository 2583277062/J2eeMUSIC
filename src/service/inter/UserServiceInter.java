package service.inter;

import java.util.List;

import domain.Music;
import domain.User;

public interface UserServiceInter extends BasicServiceInter {

	public User checkUser(User u);
	public List<Music> getMusics(int userId);
	public void addMany();
}
