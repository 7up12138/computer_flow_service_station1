package com.stx.spring.Userservice;

import java.util.List;

import com.stx.spring.Mymodel.TBModel;

public interface IOpenText {
	public List<TBModel> inputmasgtb(TBModel tBModel);

	public List<TBModel> deletetb(String topicdelete);

}
