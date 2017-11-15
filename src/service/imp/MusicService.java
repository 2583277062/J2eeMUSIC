package service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import domain.Music;
import domain.Post;
import service.inter.MusicServiceInter;

@Transactional
public class MusicService extends BasicServiceAdapter implements MusicServiceInter{
	@Override
	public List<Music> getMusicsByUserId(int userId) {
		String hql="from Music where userId="+userId;
		List<Music> musics=sessionFactory.getCurrentSession().createQuery(hql).list();
		return musics;
	}
	
	@Override
	public Music getById(int i) {
		// TODO Auto-generated method stub
		Music u=(Music) sessionFactory.getCurrentSession().get(Music.class, i);
		return u;
	}
	
	@Override
	public List<Music> getMusics() {
		// TODO Auto-generated method stub
		String hql="from Music order by id";
		List<Music> musics=sessionFactory.getCurrentSession().createQuery(hql).setMaxResults(5).list();
		return musics;
	}
	
	@Override
	public List<Music> getMusicsByStr(String str) {
		// TODO Auto-generated method stub
		String hql="from Music";
		List<Music> temp=sessionFactory.getCurrentSession().createQuery(hql).list();
		List<Music> musics=new ArrayList<Music>();
		for(Music m : temp) {
			if(m.getName().indexOf(str)!=-1) {
				musics.add(m);
			}
		}
		return musics;
	}
}
