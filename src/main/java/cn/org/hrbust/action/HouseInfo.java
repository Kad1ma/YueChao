package cn.org.hrbust.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.org.hrbust.entity.House;
import cn.org.hrbust.mapper.HouseMapper;
import cn.org.hrbust.mapper.MapperFactory;

public class HouseInfo implements Action{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		int house_property_num = Integer.parseInt(req.getParameter("house_property_num"));
		
		HouseMapper mapper = (HouseMapper) MapperFactory.getMapper("com.yuechao.mapper.HouseMapper");
		House house = mapper.queryHouseById(house_property_num);
		System.out.println(house.toString());
		
	}

}
