package com.gyojincompany.profileWeb.dao;

import com.gyojincompany.profileWeb.dto.MemberDto;

public interface IDao {

	//멤버가입관련 dao 메서드
	public void joinDao(String mid, String mpw, String mname, String memail);//회원 가입 메서드
	public int checkIdDao(String mid);//회원가입시 기존 아이디 존재 여부 체크, 로그인 시 아이디 존재 여부 체크
	public int checkPwDao(String mid, String mpw);//로그인 시 아이디와 비밀번호 일치여부 체크
	public MemberDto loginInfoDao(String mid);//로그인 한 회원의 모든 정보를 DB에서 가져옴
	public void infoModify(String mpw, String mname, String memail, String mid);//회원정보 수정
	
	
	//질문게시판관련 dao 메서드
}
