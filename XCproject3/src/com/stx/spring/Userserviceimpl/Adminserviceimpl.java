package com.stx.spring.Userserviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.stx.spring.Mydb.Admindb;
import com.stx.spring.Userservice.Adminservice;

@Service
public class Adminserviceimpl implements Adminservice {
	@Resource
	private Admindb db;
//管理员登录
	@Override
	public String login(String emailname, String password) {

		return db.login(emailname,password);
	}
//已完成订单信息
	@Override
	public List wcddinfo() {
		
		return db.wcddinfo();
	}
	
	//未完成订单信息
	@Override
	public List wwcddinfo() {
		return db.wwcinfo();
	}
	//确认订单完成
	@Override
	public int quren(int ddid) {
		
		return db.quern(ddid);
	}
	@Override
	public int deleteid(int ddid) {
		
		return db.deleteid(ddid);
	}
}
