package com.stx.spring.Userserviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.stx.spring.Userservice.Userservice;
import com.stx.spring.Mydb.Mydb;
import com.stx.spring.Mymodel.Mymodel;
import com.stx.spring.Mymodel.Plmodel;
import com.stx.spring.Mymodel.Usermodel;
@Service
public class Userserviceimpl implements Userservice{
	@Resource
	private Mydb db;
	@Override
	public String login(String username, String password) {
		
		return db.login(username,password);
	}
	@Override
	public int regist(Usermodel model) {
		
		return db.regist(model);
	}
	@Override
	public String emailyz(String emailsend) {
		
		return db.emailyz(emailsend);
	}
	@Override
	public String yzphonenum(String phonenum) {
		
		return db.yzphonenum(phonenum);
	}
	@Override
	public String yzemail(String emailname) {
	
		return db.yzemail(emailname);
	}
	@Override
	public int updatemima(String emailname, String password) {
		
		return db.updatemima(emailname,password);
	}
	@Override
	public List userinfo(String emailname) {
		
		return db.userinfo(emailname);
	}
	@Override
	public List ddinfo(String emailname) {
		
		return db.ddinfo(emailname);
	}
	@Override
	public List ftinfo(String emailname) {
	
		return db.ftinfo(emailname);
	}
	@Override
	public int xiadan(Mymodel model) {
	
		return db.xiadan(model);
	}
	@Override
	public List wddinfo(String emailname) {
		
		return db.wddinfo(emailname);
	}
	@Override
	public List yddinfo(String emailname) {
	
		return db.yddinfo(emailname);
	}
	@Override
	public int pingjia(Plmodel model) {
		
		return db.pingjia(model);
	}
	@Override
	public List listjs() {
		
		return db.listjs();
	}
	@Override
	public String pjcxusermail(int ddid) {
		
		return db.pjcxusermail(ddid);
	}
	@Override
	public List jsinfo(String js) {
		
		return db.jsinfo(js);
	}
	@Override
	public List avgpj(String js) {
		
		return db.avgjs(js);
	}
	@Override
	public List cpl(String js) {
		
		return  db.cpl(js);
	}
	@Override
	public List alljsinfo() {
		
		return db.alljsinfo();
	}
	@Override
	public List countuser(String js) {
		
		return db.pjcount(js);
	}
	

}
