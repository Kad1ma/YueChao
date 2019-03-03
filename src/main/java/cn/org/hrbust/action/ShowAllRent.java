package cn.org.hrbust.action;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.org.hrbust.entity.Page;
import cn.org.hrbust.entity.RentHouse;
import cn.org.hrbust.mapper.MapperFactory;
import cn.org.hrbust.mapper.RentHouseMapper;
import net.sf.json.JSONObject;


public class ShowAllRent implements Action{

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		int page = Integer.parseInt(req.getParameter("page"));
		int rows = Integer.parseInt(req.getParameter("rows"));
		
		RentHouseMapper mapper = (RentHouseMapper) MapperFactory.getMapper("com.yuechao.mapper.RentHouseMapper");	
		long total = mapper.queryAllRentHouse();
		System.out.println("page: " + page + "rows: " + rows + "total: " + total);
		
		int startIndex = 1 + (page - 1) * rows;
		int endIndex = page * rows;
		System.out.println("startIndex: " + startIndex + "  endIndex: " + endIndex);
		Page page1 = new Page(startIndex, endIndex);
		List<RentHouse> houseList = mapper.queryRentHouseByPage(page1);
		
		String jsonStr = "";
		if(houseList != null && houseList.size() > 0){
			Map<String,Object> map = new HashMap<String, Object>();
			map.put("total", total);
			map.put("rows", houseList); 
			
			JSONObject json = JSONObject.fromObject(map); 
			jsonStr = json.toString();
		}
		PrintWriter out = resp.getWriter();
		out.write(jsonStr);
		System.out.println(jsonStr);
		out.flush();
	}

}
