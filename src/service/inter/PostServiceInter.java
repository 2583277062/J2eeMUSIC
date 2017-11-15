package service.inter;

import java.io.File;
import java.util.List;

import domain.Post;

public interface PostServiceInter extends BasicServiceInter {

	public void addMany();
	public List<Post> getPosts();
	public List<Post> getPostsByUserId(int userId);
	public List<Post> getLatestPosts(int number);
	public List<Post> getPostsCommended(int userId);
	public List<Post> getPostsByStr(String str);
	public boolean upLoadFile(File file,String fileName,String path);
}
