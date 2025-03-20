package com.server;

import java.util.List;

import java.util.Map;

import com.entity.Xuexijilu;

public interface XuexijiluServer {

  public int add(Xuexijilu po);

  public int update(Xuexijilu po);
  
  
  
  public int delete(int id);

  public List<Xuexijilu> getAll(Map<String,Object> map);
  public List<Xuexijilu> getsyxuexijilu1(Map<String,Object> map);
  public List<Xuexijilu> getsyxuexijilu2(Map<String,Object> map);
  public List<Xuexijilu> getsyxuexijilu3(Map<String,Object> map);
  public Xuexijilu quchongXuexijilu(Map<String, Object> acount);

  public Xuexijilu getById( int id);

  public List<Xuexijilu> getByPage(Map<String, Object> map);

  public int getCount(Map<String,Object> map);

  public List<Xuexijilu> select(Map<String, Object> map);
}
//	所有List
