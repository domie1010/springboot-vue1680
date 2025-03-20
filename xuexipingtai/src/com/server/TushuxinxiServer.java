package com.server;

import java.util.List;

import java.util.Map;

import com.entity.Tushuxinxi;

public interface TushuxinxiServer {

  public int add(Tushuxinxi po);

  public int update(Tushuxinxi po);
  
  
  
  public int delete(int id);

  public List<Tushuxinxi> getAll(Map<String,Object> map);
  public List<Tushuxinxi> getsytushuxinxi1(Map<String,Object> map);
  public List<Tushuxinxi> getsytushuxinxi2(Map<String,Object> map);
  public List<Tushuxinxi> getsytushuxinxi3(Map<String,Object> map);
  public Tushuxinxi quchongTushuxinxi(Map<String, Object> acount);

  public Tushuxinxi getById( int id);

  public List<Tushuxinxi> getByPage(Map<String, Object> map);

  public int getCount(Map<String,Object> map);

  public List<Tushuxinxi> select(Map<String, Object> map);
}
//	所有List
