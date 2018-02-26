package com.stx.spring.Userserviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.stx.spring.Mydb.Imydb;
import com.stx.spring.Userservice.Iuserservice;
import com.stx.spring.Mymodel.Model;
@Service
public class userservice implements Iuserservice {

	@Resource
	private Imydb db;
	
	@Override
	public List<Model> all() {
		// TODO Auto-generated method stub
		return db.all();
	}

	@Override
	public int delete(String username) {
		// TODO Auto-generated method stub
		return db.delete(username);
	}

	@Override
	public int update(String id, String name, String nj, String zy, String jj,String emil,String tp) {
		// TODO Auto-generated method stub
		return db.update(id, name, nj, zy, jj,emil,tp);
	}

	@Override
	public int insert1(String id, String name, String nj, String zy, String jj,String emil,String tp) {
		// TODO Auto-generated method stub
		return db.insert1(id, name, nj, zy, jj,emil,tp);
	}

}
