package com.server.impl;

import java.util.List;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dao.TushuxinxiMapper;
import com.entity.Tushuxinxi;
import com.server.TushuxinxiServer;
@Service
public class TushuxinxiServerImpi implements TushuxinxiServer {
   @Resource
   private TushuxinxiMapper gdao;
	@Override
	public int add(Tushuxinxi po) {
		return gdao.insert(po);
	}

	@Override
	public int update(Tushuxinxi po) {
		return gdao.updateByPrimaryKeySelective(po);
	}

	
	
	@Override
	public int delete(int id) {
		return gdao.deleteByPrimaryKey(id);
	}

	@Override
	public List<Tushuxinxi> getAll(Map<String, Object> map) {
		return gdao.getAll(map);
	}
	
	public List<Tushuxinxi> getsytushuxinxi1(Map<String, Object> map) {
		return gdao.getsytushuxinxi1(map);
	}
	public List<Tushuxinxi> getsytushuxinxi2(Map<String, Object> map) {
		return gdao.getsytushuxinxi2(map);
	}
	public List<Tushuxinxi> getsytushuxinxi3(Map<String, Object> map) {
		return gdao.getsytushuxinxi3(map);
	}
	
	@Override
	public Tushuxinxi quchongTushuxinxi(Map<String, Object> account) {
		return gdao.quchongTushuxinxi(account);
	}

	@Override
	public List<Tushuxinxi> getByPage(Map<String, Object> map) {
		return gdao.getByPage(map);
	}

	@Override
	public int getCount(Map<String, Object> map) {
		return gdao.getCount(map);
	}

	@Override
	public List<Tushuxinxi> select(Map<String, Object> map) {
		return gdao.select(map);
	}

	@Override
	public Tushuxinxi getById(int id) {
		return gdao.selectByPrimaryKey(id);
	}

}

