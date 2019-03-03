package cn.org.hrbust.service;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import cn.org.hrbust.dao.UserDao;
import cn.org.hrbust.dto.UserDTO;
import cn.org.hrbust.entity.User;

@Service
public class UserService {
	@Resource
	UserDao userDao;

	@Transactional
	public UserDTO register(User user) {
		UserDTO userDTO = new UserDTO();
		userDTO.setResult("false");
		if (StringUtils.isEmpty(user)) {
			userDTO.setErrorMsg("参数为空");
			return userDTO;
		} else {
			String hql = "from User where user_name = ?";
			String username = user.getUserName();
			List<User> users = this.userDao.queryUsersByHQL(hql,
					new Object[]{username});
			if (!CollectionUtils.isEmpty(users)) {
				userDTO.setErrorMsg("用户名已存在");
				return userDTO;
			} else {
				String hql1 = "from User where user_tel = ?";
				String userTel = user.getUserTel();
				List<User> users1 = this.userDao.queryUsersByHQL(hql1,
						new Object[]{userTel});
				if (!CollectionUtils.isEmpty(users1)) {
					userDTO.setErrorMsg("手机号已存在");
					return userDTO;
				} else {
					this.userDao.persist(user);
					userDTO.setResult("success");
					return userDTO;
				}
			}
		}
	}

	@Transactional
	public UserDTO login(User user) {
		UserDTO userDTO = new UserDTO();
		userDTO.setResult("false");
		if (StringUtils.isEmpty(user)) {
			userDTO.setErrorMsg("参数为空");
			return userDTO;
		} else {
			String hql = "from User where user_name = ?";
			String username = user.getUserName();
			List<User> users = this.userDao.queryUsersByHQL(hql,
					new Object[]{username});
			if (CollectionUtils.isEmpty(users)) {
				userDTO.setErrorMsg("用户不存在");
				return userDTO;
			} else if (!((User) users.get(0)).getUserPassword().equals(
					user.getUserPassword())) {
				userDTO.setErrorMsg("密码错误");
				System.out.println("-------------");
				return userDTO;
			} else {
				userDTO.setResult("success");
				return userDTO;
			}
		}
	}
}