package service.inter;

import java.util.List;

import domain.Music;

public interface MusicServiceInter extends BasicServiceInter{
	public List<Music> getMusicsByUserId(int userId);
	public List<Music> getMusics();
	public List<Music> getMusicsByStr(String str);
}
