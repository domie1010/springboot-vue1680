package com.server.impl;

import java.util.List;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.KechengxinxiMapper;
import com.entity.Kechengxinxi;
import com.server.KechengxinxiServer;
@Service
public class KechengxinxiServerImpi implements KechengxinxiServer {
   @Resource
   private KechengxinxiMapper gdao;
	@Override
	public int add(Kechengxinxi po) {
		return gdao.insert(po);
	}

	@Override
	public int update(Kechengxinxi po) {
		return gdao.updateByPrimaryKeySelective(po);
	}

	
	
	@Override
	public int delete(int id) {
		return gdao.deleteByPrimaryKey(id);
	}

	@Override
	public List<Kechengxinxi> getAll(Map<String, Object> map) {
		return gdao.getAll(map);
	}
	
	public List<Kechengxinxi> getsykechengxinxi1(Map<String, Object> map) {
		return gdao.getsykechengxinxi1(map);
	}
	public List<Kechengxinxi> getsykechengxinxi2(Map<String, Object> map) {
		return gdao.getsykechengxinxi2(map);
	}
	public List<Kechengxinxi> getsykechengxinxi3(Map<String, Object> map) {
		return gdao.getsykechengxinxi3(map);
	}
	
	@Override
	public Kechengxinxi quchongKechengxinxi(Map<String, Object> account) {
		return gdao.quchongKechengxinxi(account);
	}

	@Override
	public List<Kechengxinxi> getByPage(Map<String, Object> map) {
		return gdao.getByPage(map);
	}

	@Override
	public int getCount(Map<String, Object> map) {
		return gdao.getCount(map);
	}

	@Override
	public List<Kechengxinxi> select(Map<String, Object> map) {
		return gdao.select(map);
	}

	@Override
	public Kechengxinxi getById(int id) {
		return gdao.selectByPrimaryKey(id);
	}

}

