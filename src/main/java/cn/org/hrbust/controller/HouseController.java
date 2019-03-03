package cn.org.hrbust.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.org.hrbust.dto.HouseDTO;
import cn.org.hrbust.entity.House;
import cn.org.hrbust.entity.RentHouse;
import cn.org.hrbust.service.HouseService;
import cn.org.hrbust.util.StringUtils;

import com.alibaba.fastjson.JSON;

/**
 *
 * @author LSY
 */
@Controller
@RequestMapping({"/jsp"})
public class HouseController extends BaseController {
	@Resource
	private HouseService houseService;

	@ResponseBody
	@RequestMapping({"showAllSaleHousesByPage.do", "showAllRentByPage.do"})
	public String showAllRentByPage(String page, 
	                                String rows, 
	                                String tableName) {
	    
	    HouseDTO houseDTO = this.houseService.queryHousesByPage(
				Integer.parseInt(page), Integer.parseInt(rows), tableName);
	    
		HouseDTO houseDTO1 = this.houseService.queryAllHouse(tableName);
		
		int total = houseDTO1.getResultList().size();
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("msg", houseDTO.getErrorMsg());
		map.put("rows", houseDTO.getResultList());
		map.put("total", total);
		
		return JSON.toJSONString(map);
	}

	@ResponseBody
	@RequestMapping({"ShowSelectedSaleHouseInfo.do",
			"ShowSelectedRentHouseInfo.do"})
	public String showSelectedHouseInfo(int id, 
	                                    String tableName,
	                                    String paramName) {
	    
		HouseDTO houseDTO = this.houseService.queryHouseById(tableName, id);
		
		Map<String, Object> map = new HashMap<>();
		map.put("msg", houseDTO.getErrorMsg());
		map.put("result", houseDTO.getResult());
		map.put("house", houseDTO.getResultList());
		
		return JSON.toJSONString(map);
	}

	@RequestMapping({"rentHouse.do","saleHouse.do"})
	public String saveHouseInfo(RentHouse rentHouse,
	                            House saleHouse,
	                            String serviceType,
	                            Model model) {
	    if(StringUtils.isEmpty(serviceType)){
	        model.addAttribute("msg", "入参不能为空");
	        return "saveresult";
	    }
	    
	    String targetUrl = null;
	    HouseDTO houseDTO = null;
	    if("rent".equals(serviceType)){
	        houseDTO = houseService.saveHouse(rentHouse);
	        targetUrl = "showallrenthouse.jsp";
	    } else {
	        houseDTO = houseService.saveHouse(saleHouse);
	        targetUrl = "showallsalehouse.jsp";
	    }
	    
	    model.addAttribute("msg", houseDTO.getErrorMsg());
	    model.addAttribute("result", houseDTO.getResult());
	    model.addAttribute("targetUrl",targetUrl);
	    return "saveresult";
	}
}