package cn.org.hrbust.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class PricingTrial implements Action{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		String method = req.getParameter("method");
		int area = Integer.parseInt(req.getParameter("area"));
		int FLOOR = Integer.parseInt(req.getParameter("FLOOR"));
		int structure = Integer.parseInt(req.getParameter("structure"));
		int towards = Integer.parseInt(req.getParameter("towards"));
		int POSITION = Integer.parseInt(req.getParameter("POSITION"));
		int appendFacilities = Integer.parseInt(req.getParameter("appendFacilities"));
		int decorateSituation = Integer.parseInt(req.getParameter("decorateSituation"));
		int month = 1;
		if(req.getParameter("month") != ""){
		 Integer.parseInt(req.getParameter("month"));
		}
		int score = FLOOR + structure + towards + POSITION + appendFacilities + decorateSituation;
		int money = 0;
		if(method.equals("sale")){
			 money = score * 1000 * area;
		}else{
			money = score * 50 * area * month;
		}
		
		String result = "估计的价格为：" + money;
		req.setAttribute("result", result);
		req.getRequestDispatcher("trialresult.jsp").forward(req, resp);
	}

}
