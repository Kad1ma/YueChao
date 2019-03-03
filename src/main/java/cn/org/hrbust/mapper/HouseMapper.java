package cn.org.hrbust.mapper;

import java.util.List;

import cn.org.hrbust.entity.House;
import cn.org.hrbust.entity.Page;


public interface HouseMapper extends Mapper{
	
	public House queryHouseById(int house_property_num);
	
	public long queryAllHouse();
	
	public List<House> queryHouseByPage(Page page);
	
	public boolean insertSaleHouse(House House);
	
	public boolean deleteHouse(int house_property_num);
}
