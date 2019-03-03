package cn.org.hrbust.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.org.hrbust.entity.User;
import cn.org.hrbust.mapper.MapperFactory;
import cn.org.hrbust.mapper.UserMapper;


public class Register implements Action{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ClassNotFoundException {
		req.setCharacterEncoding("utf-8");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String tel = req.getParameter("tel");
		
//		User user = new User(username, password, tel);
		
		UserMapper mapper = (UserMapper) MapperFactory.getMapper("com.yuechao.mapper.UserMapper");
//		mapper.insertUser(user);
	}
	
}
