package com.stx.spring.Mymodel;

public class TBModel {
	//��¼��ģ��
	private String registeruser_email;
	private String registeruser_pwd;
	private int user_power;
	//�����ģ��
	private int topic_id;
	private String topic_title;
	private String topic_user_id;
	private String topic_time;
	private String topic_last_update_user_id;
	private String topic_last_update_time;
	//���ӱ�ģ��
	private int post_id;
	private int post_topic_id;
	private String post_user_id;
	private String post_time;
	private String post_content;
	
	//�ظ���ģ��
	private int reply_id;
	private int reply_post_id;
	private String reply_user_id;
	private String reply_time;
	private String reply_content;
	
	
	
	
	public String getRegisteruser_email() {
		return registeruser_email;
	}
	public void setRegisteruser_email(String registeruser_email) {
		this.registeruser_email = registeruser_email;
	}
	public String getRegisteruser_pwd() {
		return registeruser_pwd;
	}
	public void setRegisteruser_pwd(String registeruser_pwd) {
		this.registeruser_pwd = registeruser_pwd;
	}
	public int getUser_power() {
		return user_power;
	}
	public void setUser_power(int user_power) {
		this.user_power = user_power;
	}
	public int getTopic_id() {
		return topic_id;
	}
	public void setTopic_id(int topic_id) {
		this.topic_id = topic_id;
	}
	public String getTopic_title() {
		return topic_title;
	}
	public void setTopic_title(String topic_title) {
		this.topic_title = topic_title;
	}
	
	public String getTopic_time() {
		return topic_time;
	}
	public void setTopic_time(String topic_time) {
		this.topic_time = topic_time;
	}
	
	public String getTopic_last_update_time() {
		return topic_last_update_time;
	}
	public void setTopic_last_update_time(String topic_last_update_time) {
		this.topic_last_update_time = topic_last_update_time;
	}
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	public int getPost_topic_id() {
		return post_topic_id;
	}
	public void setPost_topic_id(int post_topic_id) {
		this.post_topic_id = post_topic_id;
	}
	
	public String getPost_time() {
		return post_time;
	}
	public void setPost_time(String post_time) {
		this.post_time = post_time;
	}
	public String getPost_content() {
		return post_content;
	}
	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}
	public int getReply_id() {
		return reply_id;
	}
	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}
	public int getReply_post_id() {
		return reply_post_id;
	}
	public void setReply_post_id(int reply_post_id) {
		this.reply_post_id = reply_post_id;
	}
	
	public String getTopic_user_id() {
		return topic_user_id;
	}
	public void setTopic_user_id(String topic_user_id) {
		this.topic_user_id = topic_user_id;
	}
	public String getTopic_last_update_user_id() {
		return topic_last_update_user_id;
	}
	public void setTopic_last_update_user_id(String topic_last_update_user_id) {
		this.topic_last_update_user_id = topic_last_update_user_id;
	}
	public String getPost_user_id() {
		return post_user_id;
	}
	public void setPost_user_id(String post_user_id) {
		this.post_user_id = post_user_id;
	}
	public String getReply_user_id() {
		return reply_user_id;
	}
	public void setReply_user_id(String reply_user_id) {
		this.reply_user_id = reply_user_id;
	}
	public String getReply_time() {
		return reply_time;
	}
	public void setReply_time(String reply_time) {
		this.reply_time = reply_time;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	
	
	
	
}
