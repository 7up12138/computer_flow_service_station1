package com.stx.spring.Userservice;

import java.util.List;

import com.stx.spring.Mymodel.TBModel;

public interface ISelectPost {
	public List<TBModel> SelectPostMessage();

	public List<TBModel> SimpleSelectPostMessage(int topic_id);

	public List<TBModel> loginselect(TBModel tBModel);

}
