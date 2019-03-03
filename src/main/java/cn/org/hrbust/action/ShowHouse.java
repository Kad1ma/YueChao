package cn.org.hrbust.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.org.hrbust.entity.House;
import cn.org.hrbust.mapper.HouseMapper;
import cn.org.hrbust.mapper.MapperFactory;


public class ShowHouse implements Action{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int id = Integer.parseInt(req.getParameter("housePropertyNum"));
		
		HouseMapper mapper = (HouseMapper) MapperFactory.getMapper("com.yuechao.mapper.HouseMapper");
		House house = mapper.queryHouseById(id);
		System.out.println(house.toString());
		req.setAttribute("house", house);
		req.getRequestDispatcher("showhouse.jsp").forward(req, resp);
	}

}
