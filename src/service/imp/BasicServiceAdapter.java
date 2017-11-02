package service.imp;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import service.inter.BasicServiceInter;

@Transactional
public class BasicServiceAdapter implements BasicServiceInter {
	
	@Resource
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void add(Object o) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().save(o);
	}

	@Override
	public void delete(Object o) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(o);
	}

	@Override
	public void update(Object o) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().update(o);
	}

	@Override
	public Object getById(int i) {
		// TODO Auto-generated method stub
		return null;
	}

}
