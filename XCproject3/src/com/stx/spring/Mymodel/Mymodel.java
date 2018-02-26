package com.stx.spring.Mymodel;

public class Mymodel {
	private int id;
    private  String qname;    //问提
    private  String pname;    //姓名
    private  String phonenum;  //电话号码
    private  String emailname; //邮箱
    private  String yyjs;	  //技师
    private  String yytime;   //时间
    private  String yyplace;  //地点
    private  String yydate;    //系统时间
    private String flag;

    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public String getYydate() {
		return yydate;
	}

	public void setYydate(String yydate) {
		this.yydate = yydate;
	}

	public String getQname() {
        return qname;
    }

    public void setQname(String qname) {
        this.qname = qname;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    public String getEmailname() {
        return emailname;
    }

    public void setEmailname(String emailname) {
        this.emailname = emailname;
    }

    public String getYyjs() {
        return yyjs;
    }

    public void setYyjs(String yyjs) {
        this.yyjs = yyjs;
    }

    public String getYytime() {
        return yytime;
    }

    public void setYytime(String yytime) {
        this.yytime = yytime;
    }

    public String getYyplace() {
        return yyplace;
    }

    public void setYyplace(String yyplace) {
        this.yyplace = yyplace;
    }

}
