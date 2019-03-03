package cn.org.hrbust.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.ScrollableResults;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Component;

@Component
public class DalImpl implements Dal {
	@Resource
	private SessionFactory sessionFactory;

	public <T> Integer persist(T object) {
		return (Integer) this.sessionFactory.getCurrentSession().save(object);
	}

	public List<?> queryList(String hql, Object... args) {
		Query<?> query = this.sessionFactory.getCurrentSession().createQuery(
				hql);

		for (int i = 0; i < args.length; ++i) {
			query.setParameter(i, args[i]);
		}

		return query.list();
	}

	public List<?> queryListByPage(String hql, Integer... args) {
		Query<?> query = this.sessionFactory.getCurrentSession().createQuery(
				hql);
		ScrollableResults scroll = query.scroll();
		scroll.last();
		query.setFirstResult(args[0]);
		query.setMaxResults(args[1]);
		return query.list();
	}

	@SuppressWarnings("unchecked")
    public <T> T queryByObject(Class<?> entityType, Integer id) {
		return (T) this.sessionFactory.getCurrentSession().get(entityType, id);
	}
}