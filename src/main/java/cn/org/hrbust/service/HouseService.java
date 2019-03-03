package cn.org.hrbust.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Service;

import cn.org.hrbust.dao.HouseDao;
import cn.org.hrbust.dto.HouseDTO;
import cn.org.hrbust.entity.House;
import cn.org.hrbust.entity.RentHouse;
import cn.org.hrbust.util.StringUtils;

@Service
public class HouseService {
	private static final String FALSE              =                "false";
	private static final String SUCCESS            =                "success";
	
	@Resource
	HouseDao                    houseDao;

	@SuppressWarnings("rawtypes")
    public <T> HouseDTO queryAllHouse(String tableName) {
		HouseDTO houseDTO = new HouseDTO();
		houseDTO.setResult(FALSE);
		
		if (StringUtils.isEmpty(new Object[]{tableName})) {
			houseDTO.setErrorMsg("参数不能为空");
		}

		String hql = "from " + tableName;
		List houses = this.houseDao.queryHouseByHQL(hql, new Object[0]);
		
		if (CollectionUtils.isEmpty(houses)) {
			houseDTO.setErrorMsg("没有房屋信息");
			return houseDTO;
		}
		
		houseDTO.setResultList(houses);
		houseDTO.setResult(SUCCESS);
		return houseDTO;
		
	}

	@SuppressWarnings("rawtypes")
    public HouseDTO queryHousesByPage(Integer page, Integer rows,
			String tableName) {
		HouseDTO houseDTO = new HouseDTO();
		houseDTO.setResult(FALSE);
		
		if (StringUtils.isEmpty(new Object[]{page, rows, tableName})) {
			houseDTO.setErrorMsg("参数不能为空");
			return houseDTO;
		}
			
		int startIndex = 0 + (page - 1) * rows;
		String hql = "from " + tableName;
		List houses = this.houseDao.queryHouseByPage(hql, startIndex,
					rows);
		if (CollectionUtils.isEmpty(houses)) {
			houseDTO.setErrorMsg("没有房屋信息");
			return houseDTO;
		}
		
		houseDTO.setResultList(houses);
		houseDTO.setResult(SUCCESS);
		return houseDTO;
		
	}

	@SuppressWarnings("rawtypes")
    public <T> HouseDTO queryHouseByParame(T param, String tableName,
			String paramName) {
		HouseDTO houseDTO = new HouseDTO();
		houseDTO.setResult(FALSE);
		
		if (StringUtils.isEmpty(new Object[]{param, tableName, paramName})) {
			houseDTO.setErrorMsg("参数不能为空");
			return houseDTO;
		}
			
		String hql = "from " + tableName + " where " + paramName + " = ?";
		List houses = this.houseDao.queryHouseByHQL(hql,
					new Object[]{Integer.parseInt(param.toString())});
		
		if (CollectionUtils.isEmpty(houses)) {
			houseDTO.setErrorMsg("没有房屋信息");
			return houseDTO;
		} 
			
		houseDTO.setResultList(houses);
		houseDTO.setResult(SUCCESS);
		return houseDTO;
		
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
    public <T> HouseDTO queryHouseById(String entityName, Integer id) {
		HouseDTO houseDTO = new HouseDTO();
		houseDTO.setResult(FALSE);
		
		if (StringUtils.isEmpty(new Object[]{entityName, id})) {
			houseDTO.setErrorMsg("参数不能为空");
			return houseDTO;
		} 
			
		Class<?> entityType = null;
		if ("House".equals(entityName)) {
			entityType = House.class;
		} else if ("RentHouse".equals(entityName)) {
			entityType = RentHouse.class;
		}

		T result = this.houseDao.queryHouseById(entityType, id);
		
		if (StringUtils.isEmpty(new Object[]{result})) {
			houseDTO.setErrorMsg("没有该房屋信息");
			return houseDTO;
		} 
			
		List resultList = new ArrayList();
		resultList.add(result);
		houseDTO.setResultList(resultList);
		houseDTO.setResult(SUCCESS);
			
		return houseDTO;
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
    public HouseDTO saveHouse(Object house) {
	    HouseDTO houseDTO = new HouseDTO();
	    houseDTO.setResult(FALSE);
	    
	    if(StringUtils.isEmpty(new Object[]{house})){
	        houseDTO.setResult("入参不为空");
	        return houseDTO;
	    }
	    
	    Integer id = houseDao.saveHouse(house);
	    
	    if(StringUtils.isEmpty(new Object[]{id})){
	        houseDTO.setResult("保存失败");
	        return houseDTO;
	    }
	    
	    List resultList = new ArrayList<>();
	    resultList.add(id);
	    houseDTO.setResultList(resultList);
	    houseDTO.setResult(SUCCESS);
		return houseDTO;
	}
}