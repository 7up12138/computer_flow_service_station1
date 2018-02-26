package com.stx.spring.Mydb;

import java.util.List;

import com.stx.spring.Mymodel.TBModel;

public interface IInsertTopicDao {
	public List<TBModel> insertopictext(TBModel tBModel);

	public List<TBModel> insertopictext(String topicdelete);

}
