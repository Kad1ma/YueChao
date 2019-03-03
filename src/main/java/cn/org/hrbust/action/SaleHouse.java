//package cn.org.hrbust.action;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import cn.org.hrbust.entity.House;
//import cn.org.hrbust.mapper.HouseMapper;
//import cn.org.hrbust.mapper.MapperFactory;
//
//
//public class SaleHouse implements Action{
//
//	@Override
//	public void execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
//		req.setCharacterEncoding("utf-8");
//		
//		String belongsToBuilding = req.getParameter("belongsToBuilding");
//		String unit = req.getParameter("unit");
//		int FLOOR = Integer.parseInt(req.getParameter("FLOOR"));
//		String houseType = req.getParameter("houseType");
//		String propertyType = req.getParameter("propertyType");
//		String POSITION = req.getParameter("POSITION");
//		String decorateSituation = req.getParameter("decorateSituation");
//		String housingPriceChangingInformation = req.getParameter("housingPriceChangingInformation");
//		String appendFacilities = req.getParameter("appendFacilities");
//		int housePropertyNum = Integer.parseInt(req.getParameter("housePropertyNum"));
//		String structure = req.getParameter("structure");
//		double AREA = Double.parseDouble(req.getParameter("AREA"));
//		String houseLandscape = req.getParameter("houseLandscape");
//		String towards = req.getParameter("towards");
//		int housingPrice = Integer.parseInt(req.getParameter("housingPrice"));
//		
//		House house = new  House(belongsToBuilding, unit, FLOOR, housePropertyNum, structure, propertyType, houseType, AREA, houseLandscape, towards,POSITION, decorateSituation, appendFacilities, housingPrice, housingPriceChangingInformation);
//		HouseMapper mapper = (HouseMapper) MapperFactory.getMapper("com.yuechao.mapper.HouseMapper");
//		boolean boo = mapper.insertSaleHouse(house);
//		
//		String message = boo == true ? "�۷���Ϣ�����ɹ�":"�۷���Ϣ����ʧ�ܣ����������Ƿ���ȷ";
//		req.setAttribute("message", message);
//			req.getRequestDispatcher("result.jsp").forward(req, resp); 
//	}
//
//}
