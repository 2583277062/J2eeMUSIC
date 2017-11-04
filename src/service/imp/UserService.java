package service.imp;

import java.util.List;

import org.hibernate.Query;
import org.springframework.transaction.annotation.Transactional;

import domain.Music;
import domain.User;
import service.inter.UserServiceInter;

@Transactional
public class UserService extends BasicServiceAdapter implements UserServiceInter {
	
	@Override
	public User getById(int i){
		// TODO Auto-generated method stub
		return (User) sessionFactory.getCurrentSession().get(User.class, i);
	}

	@Override
	public User checkUser(User u) {
		// TODO Auto-generated method stub
		User temp=this.getById(u.getId());
		if(temp!=null){
			if(temp.getPassword().equals(u.getPassword())){
				return temp;
			}
		}
		return null;
	}
	
	@Override
	public void update(Object o) {
		// TODO Auto-generated method stub
		User u=(User) o;
		String hql="update User user set user.sign=?,user.sex=?,user.birthday=?,location=?,email=? where user.id=?";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter(0, u.getSign()).setParameter(1, u.getSex())
		.setParameter(2, u.getBirthday()).setParameter(3, u.getLocation()).setParameter(4, u.getEmail()).setParameter(5, u.getId());
		query.executeUpdate();
	}
	
	@Override
	public List<Music> getMusics(int userId) {
		String hql="from Music where userId="+userId;
		List<Music> musics=sessionFactory.getCurrentSession().createQuery(hql).list();
		return musics;
	}
	
	public void addMany() {
		User u;
		for(int i=0;i<100;i++) {
			u=User.randomUser();
			this.add(u);
		}
	}

}
