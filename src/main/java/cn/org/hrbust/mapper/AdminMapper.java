package cn.org.hrbust.mapper;

import cn.org.hrbust.entity.Admin;
import cn.org.hrbust.mapper.Mapper;
public interface AdminMapper extends Mapper{
	
	public Admin queryAdmin(String username);
}
