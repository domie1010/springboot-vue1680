package com.server.impl;

import java.util.List;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.XuexijiluMapper;
import com.entity.Xuexijilu;
import com.server.XuexijiluServer;
@Service
public class XuexijiluServerImpi implements XuexijiluServer {
   @Resource
   private XuexijiluMapper gdao;
	@Override
	public int add(Xuexijilu po) {
		return gdao.insert(po);
	}

	@Override
	public int update(Xuexijilu po) {
		return gdao.updateByPrimaryKeySelective(po);
	}

	
	
	@Override
	public int delete(int id) {
		return gdao.deleteByPrimaryKey(id);
	}

	@Override
	public List<Xuexijilu> getAll(Map<String, Object> map) {
		return gdao.getAll(map);
	}
	
	public List<Xuexijilu> getsyxuexijilu1(Map<String, Object> map) {
		return gdao.getsyxuexijilu1(map);
	}
	public List<Xuexijilu> getsyxuexijilu2(Map<String, Object> map) {
		return gdao.getsyxuexijilu2(map);
	}
	public List<Xuexijilu> getsyxuexijilu3(Map<String, Object> map) {
		return gdao.getsyxuexijilu3(map);
	}
	
	@Override
	public Xuexijilu quchongXuexijilu(Map<String, Object> account) {
		return gdao.quchongXuexijilu(account);
	}

	@Override
	public List<Xuexijilu> getByPage(Map<String, Object> map) {
		return gdao.getByPage(map);
	}

	@Override
	public int getCount(Map<String, Object> map) {
		return gdao.getCount(map);
	}

	@Override
	public List<Xuexijilu> select(Map<String, Object> map) {
		return gdao.select(map);
	}

	@Override
	public Xuexijilu getById(int id) {
		return gdao.selectByPrimaryKey(id);
	}

}

