package cn.org.hrbust.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.org.hrbust.dto.UserDTO;
import cn.org.hrbust.entity.User;
import cn.org.hrbust.service.UserService;

import com.alibaba.fastjson.JSON;

@Controller
@RequestMapping({"/jsp"})
public class UserController extends BaseController {
	@Resource
	UserService userService;

	@ResponseBody
	@RequestMapping({"/register.do"})
	public String userRegister(User user) {
		UserDTO userDTO = this.userService.register(user);
		Map<String, String> map = new HashMap();
		map.put("msg", userDTO.getErrorMsg());
		map.put("result", userDTO.getResult());
		map.put("parame", "targetUrl=jsp/login.jsp");
		return JSON.toJSONString(map);
	}

	@ResponseBody
	@RequestMapping({"/login.do"})
	public String userLogin(User user) {
		UserDTO userDTO = this.userService.login(user);
		Map<String, String> map = new HashMap();
		map.put("msg", userDTO.getErrorMsg());
		map.put("result", userDTO.getResult());
		map.put("targetUrl", "jsp/index.jsp");
		return JSON.toJSONString(map);
	}
}