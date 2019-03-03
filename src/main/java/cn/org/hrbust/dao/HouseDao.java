package cn.org.hrbust.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class HouseDao extends BaseDao {
	@SuppressWarnings("unchecked")
    public <T> List<T> queryHouseByHQL(String hql, Object... args) {
		return this.dal.queryList(hql, args);
	}

    public <T> List<T> queryHouseByPage(String hql, int startPage, int endPage) {
		return this.dal.queryListByPage(hql, new Integer[]{startPage, endPage});
	}

	public <T> T queryHouseById(Class<?> entityType, Integer id) {
		return this.dal.queryByObject(entityType, id);
	}

	@Transactional
	public <T> Integer saveHouse(T obj) {
		return this.dal.persist(obj);
	}
}