package cn.org.hrbust.mapper;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MapperFactory {
	public static Mapper getMapper(String mapperName) {
		String resource = "mybatis-config.xml";
		InputStream inputStream = null;
		SqlSession session = null;
		Mapper mapper = null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			SqlSessionFactoryBuilder factoryBuilder = new SqlSessionFactoryBuilder();
			SqlSessionFactory factory = factoryBuilder.build(inputStream);
			session = factory.openSession(true);
			mapper = (Mapper) session.getMapper(Class.forName(mapperName));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mapper;
	}
}
