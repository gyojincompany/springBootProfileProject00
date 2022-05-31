package com.gyojincompany.profileWeb.dao;

public interface IDao {

	//멤버가입관련 dao 메서드
	public void joinDao(String mid, String mpw, String mname, String memail);//회원 가입 메서드
	public int checkIdDao(String mid);//회원가입시 기존 아이디 존재 여부 체크
	
	
	//질문게시판관련 dao 메서드
}
