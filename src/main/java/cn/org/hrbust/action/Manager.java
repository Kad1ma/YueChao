package cn.org.hrbust.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.org.hrbust.mapper.HouseMapper;
import cn.org.hrbust.mapper.MapperFactory;
import cn.org.hrbust.mapper.RentHouseMapper;


public class Manager implements Action{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		int id = Integer.parseInt(req.getParameter("id"));
		int id1 = Integer.parseInt(req.getParameter("id1"));
		String method = req.getParameter("method");
		boolean boo = false;
		System.out.println(id + "dsasaasdasdasda" + id1);
		if(method.equals("sale")){
			HouseMapper mapper = (HouseMapper) MapperFactory.getMapper("com.yuechao.mapper.HouseMapper");
			boo = mapper.deleteHouse(id);
		}else{
			RentHouseMapper mapper = (RentHouseMapper) MapperFactory.getMapper("com.yuechao.mapper.RentHouseMapper");
			boo = mapper.deleteRentHouse(id1);
		}
		
		String result = null;
		if(boo == true){
			result = "É¾³ý³É¹¦";
		}else {
			result = "É¾³ýÊ§°Ü";
		}
		
		req.setAttribute("result", result);
		req.getRequestDispatcher("deleteresult.jsp").forward(req, resp);
	}

}
