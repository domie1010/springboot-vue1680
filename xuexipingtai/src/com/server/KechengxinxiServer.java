package com.server;

import java.util.List;

import java.util.Map;

import com.entity.Kechengxinxi;

public interface KechengxinxiServer {

  public int add(Kechengxinxi po);

  public int update(Kechengxinxi po);
  
  
  
  public int delete(int id);

  public List<Kechengxinxi> getAll(Map<String,Object> map);
  public List<Kechengxinxi> getsykechengxinxi1(Map<String,Object> map);
  public List<Kechengxinxi> getsykechengxinxi2(Map<String,Object> map);
  public List<Kechengxinxi> getsykechengxinxi3(Map<String,Object> map);
  public Kechengxinxi quchongKechengxinxi(Map<String, Object> acount);

  public Kechengxinxi getById( int id);

  public List<Kechengxinxi> getByPage(Map<String, Object> map);

  public int getCount(Map<String,Object> map);

  public List<Kechengxinxi> select(Map<String, Object> map);
}
//	所有List
