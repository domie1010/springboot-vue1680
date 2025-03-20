package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Xuexijilu;

public interface XuexijiluMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Xuexijilu record);

    int insertSelective(Xuexijilu record);

    Xuexijilu selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Xuexijilu record);
	
    int updateByPrimaryKey(Xuexijilu record);
	public Xuexijilu quchongXuexijilu(Map<String, Object> xuexiren);
	public List<Xuexijilu> getAll(Map<String, Object> map);
	public List<Xuexijilu> getsyxuexijilu1(Map<String, Object> map);
	public List<Xuexijilu> getsyxuexijilu3(Map<String, Object> map);
	public List<Xuexijilu> getsyxuexijilu2(Map<String, Object> map);
	public int getCount(Map<String, Object> po);
	public List<Xuexijilu> getByPage(Map<String, Object> map);
	public List<Xuexijilu> select(Map<String, Object> map);
//	所有List
}

