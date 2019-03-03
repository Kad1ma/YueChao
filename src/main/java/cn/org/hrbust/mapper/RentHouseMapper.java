package cn.org.hrbust.mapper;

import java.util.List;

import cn.org.hrbust.entity.Page;
import cn.org.hrbust.entity.RentHouse;


public interface RentHouseMapper extends Mapper{

	public boolean insertRentHouse(RentHouse rentHouse);
	
	public long queryAllRentHouse();
	
	public List<RentHouse> queryRentHouseByPage(Page page);
	
	public RentHouse queryRentHouseById(int house_property_num);
	
	public boolean deleteRentHouse(int house_property_num);
}
