package cn.org.hrbust.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.org.hrbust.entity.RentHouse;
import cn.org.hrbust.mapper.MapperFactory;
import cn.org.hrbust.mapper.RentHouseMapper;


public class ShowRentHouse implements Action{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int id = Integer.parseInt(req.getParameter("housePropertyNum"));

		RentHouseMapper mapper = (RentHouseMapper) MapperFactory.getMapper("com.yuechao.mapper.RentHouseMapper");
		RentHouse house = mapper.queryRentHouseById(id);
		System.out.println(house.toString());
		req.setAttribute("house", house);
		System.out.println(house.toString());
		req.getRequestDispatcher("showrenthouse.jsp").forward(req, resp);
	}

}
