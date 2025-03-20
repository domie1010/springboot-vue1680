package com.dao;

import java.util.List;
import java.util.Map;

import com.entity.Tushuxinxi;

public interface TushuxinxiMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Tushuxinxi record);

    int insertSelective(Tushuxinxi record);

    Tushuxinxi selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Tushuxinxi record);
	
    int updateByPrimaryKey(Tushuxinxi record);
	public Tushuxinxi quchongTushuxinxi(Map<String, Object> tushubianhao);
	public List<Tushuxinxi> getAll(Map<String, Object> map);
	public List<Tushuxinxi> getsytushuxinxi1(Map<String, Object> map);
	public List<Tushuxinxi> getsytushuxinxi3(Map<String, Object> map);
	public List<Tushuxinxi> getsytushuxinxi2(Map<String, Object> map);
	public int getCount(Map<String, Object> po);
	public List<Tushuxinxi> getByPage(Map<String, Object> map);
	public List<Tushuxinxi> select(Map<String, Object> map);
//	所有List
}

