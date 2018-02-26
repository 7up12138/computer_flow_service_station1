package com.stx.spring.Userservice;

import java.util.List;

public interface Adminservice {

	String login(String emailname, String password);

	List wcddinfo();

	List wwcddinfo();

	int quren(int ddid);

	int deleteid(int ddid);

}
