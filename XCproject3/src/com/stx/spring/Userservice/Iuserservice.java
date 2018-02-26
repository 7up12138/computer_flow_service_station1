package com.stx.spring.Userservice;

import java.util.List;

import com.stx.spring.Mymodel.Model;

public interface Iuserservice {

	public List<Model> all();
	public int delete(String username);
	public int update(String id,String name,String nj,String zy,String jj,String emil,String tp);
    public int insert1(String id,String name,String nj,String zy,String jj,String emil,String tp);
}
