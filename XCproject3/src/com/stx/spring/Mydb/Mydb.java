package com.stx.spring.Mydb;

import java.util.List;

import com.stx.spring.Mymodel.Mymodel;
import com.stx.spring.Mymodel.Plmodel;
import com.stx.spring.Mymodel.Usermodel;

public interface Mydb {

	String login(String username, String password);

	int regist(Usermodel model);

	String emailyz(String emailsend);

	String yzphonenum(String phonenum);

	String yzemail(String emailname);

	int updatemima(String emailname, String password);

	List userinfo(String emailname);

	List ddinfo(String emailname);

	List ftinfo(String emailname);

	int xiadan(Mymodel model);

	List wddinfo(String emailname);

	List yddinfo(String emailname);

	int pingjia(Plmodel model);

	List listjs();

	String pjcxusermail(int ddid);

	List jsinfo(String js);

	List avgjs(String js);

	List cpl(String js);

	List alljsinfo();

	List pjcount(String js);
}
