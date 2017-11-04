package service.inter;

import java.util.List;

import domain.Collection;

public interface CollectionServiceInter extends BasicServiceInter {

	public List<Collection> getByUserId(int userId);
}
