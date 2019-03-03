package cn.org.hrbust.mapper;

import cn.org.hrbust.entity.User;

public interface UserMapper extends Mapper{

	public int insertUser(User user);
	
	public User queryUser(String username);
}
