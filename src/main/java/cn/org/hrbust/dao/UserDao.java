package cn.org.hrbust.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.org.hrbust.entity.User;

@Repository
public class UserDao extends BaseDao {
	public long persist(User user) {
		return (long) this.dal.persist(user);
	}

	@SuppressWarnings("unchecked")
    public List<User> queryUsersByHQL(String hql, Object... args) {
		return this.dal.queryList(hql, args);
	}
}