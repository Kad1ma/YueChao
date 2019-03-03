package cn.org.hrbust.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.org.hrbust.entity.Admin;
import cn.org.hrbust.entity.User;
import cn.org.hrbust.mapper.AdminMapper;
import cn.org.hrbust.mapper.MapperFactory;
import cn.org.hrbust.mapper.UserMapper;


public class Login implements Action {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String method = req.getParameter("method");

		System.out.println("username:" + username + " password:" + password);

		if (method != null && method.equals("AdminLogin")) {
			AdminMapper mapper = 	(AdminMapper) MapperFactory.getMapper("com.yuechao.mapper.AdminMapper");
			Admin admin = mapper.queryAdmin(username);
			if(admin.getPassword().equals(password)){
				req.getRequestDispatcher("manager.jsp").forward(req, resp);
			}else{
				resp.sendRedirect("Admin.jsp");
			}
		} else {
			UserMapper mapper = (UserMapper) MapperFactory.getMapper("com.yuechao.mapper.UserMapper");

			User user = mapper.queryUser(username);

			if (user != null && user.getUserPassword().equals(password)) {
				req.setAttribute("user", user);
				req.getRequestDispatcher("choosepage.jsp").forward(req, resp);
			} else {
				resp.sendRedirect("login.jsp");
			}
		}
	}

}
