package com.stx.spring.Mydb;

import java.util.List;

import com.stx.spring.Mymodel.Model;

public interface Imydb {

	public List<Model> all();
	public int delete(String username);
	public int update(String id,String name,String nj,String zy,String jj,String emil,String tp);
    public int insert1(String id,String name,String nj,String zy,String jj,String emil,String tp);
}
