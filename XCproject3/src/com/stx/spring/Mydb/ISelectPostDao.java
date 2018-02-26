package com.stx.spring.Mydb;

import java.util.List;

import com.stx.spring.Mymodel.TBModel;

public interface ISelectPostDao {
	public List<TBModel> SelectPostContextMessageall();

	public List<TBModel> SimpleSelectPostContextMessageall(int topic_id);

	public List<TBModel> loginuserlogin(TBModel tBModel);

}
