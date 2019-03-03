//package cn.org.hrbust.action;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import cn.org.hrbust.entity.RentHouse;
//import cn.org.hrbust.mapper.MapperFactory;
//import cn.org.hrbust.mapper.RentHouseMapper;
//
//
//public class Rent implements Action{
//
//	@Override
//	public void execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
//		req.setCharacterEncoding("utf-8");
//		
//		String belongsToBuilding = req.getParameter("belongsToBuilding");
//		String unit = req.getParameter("unit");
//		int FLOOR = Integer.parseInt(req.getParameter("FLOOR"));
//		int housePropertyNum = Integer.parseInt(req.getParameter("housePropertyNum"));
//		String structure = req.getParameter("structure");
//		String propertyType = req.getParameter("propertyType");
//		String houseType = req.getParameter("houseType");
//		double AREA = Double.parseDouble(req.getParameter("AREA"));
//		String houseLandscape = req.getParameter("houseLandscape");
//		String POSITION = req.getParameter("POSITION");
//		String towards = req.getParameter("towards");
//		String decorateSituation = req.getParameter("decorateSituation");
//		String ConfigurationFacilities = req.getParameter("ConfigurationFacilities");
//		String appendFacilities = req.getParameter("appendFacilities");
//		String use = req.getParameter("use");
//		String tel = req.getParameter("tel");
//		int rentMoney = Integer.parseInt(req.getParameter("rentMoney"));
//		
//		
//		RentHouse rentHouse = new RentHouse(belongsToBuilding, unit, FLOOR, houseType, propertyType, POSITION, decorateSituation, ConfigurationFacilities, appendFacilities, housePropertyNum, structure, AREA, houseLandscape, towards, use, tel,rentMoney);
//		RentHouseMapper mapper = (RentHouseMapper) MapperFactory.getMapper("com.yuechao.mapper.RentHouseMapper");
//		boolean boo = mapper.insertRentHouse(rentHouse);
//		String message = boo == true ? "�ⷿ��Ϣ�����ɹ�":"�ⷿ��Ϣ����ʧ�ܣ����������Ƿ���ȷ";
//		req.setAttribute("message", message);
//			req.getRequestDispatcher("result.jsp").forward(req, resp); 
//	}
//	
//
//}
