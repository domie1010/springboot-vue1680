package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Kechengxinxi;

public interface KechengxinxiMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Kechengxinxi record);

    int insertSelective(Kechengxinxi record);

    Kechengxinxi selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Kechengxinxi record);
	
    int updateByPrimaryKey(Kechengxinxi record);
	public Kechengxinxi quchongKechengxinxi(Map<String, Object> shipinmingcheng);
	public List<Kechengxinxi> getAll(Map<String, Object> map);
	public List<Kechengxinxi> getsykechengxinxi1(Map<String, Object> map);
	public List<Kechengxinxi> getsykechengxinxi3(Map<String, Object> map);
	public List<Kechengxinxi> getsykechengxinxi2(Map<String, Object> map);
	public int getCount(Map<String, Object> po);
	public List<Kechengxinxi> getByPage(Map<String, Object> map);
	public List<Kechengxinxi> select(Map<String, Object> map);
//	所有List
}

