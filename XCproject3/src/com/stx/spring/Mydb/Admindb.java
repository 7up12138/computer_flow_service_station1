package com.stx.spring.Mydb;

import java.util.List;

public interface Admindb {

	String login(String emailname, String password);

	List wcddinfo();

	List wwcinfo();

	int quern(int ddid);

	int deleteid(int ddid);

}
