package com.kh.so.member.model.vo;

import java.io.Serializable;

public class Member implements Serializable{
	private String mId;
	private String mName;
	private String mPwd;
	private String email;
	private String phone;
	private String mContent; // 메모
	private String mBirth;
	private String mAddress; // 사는 곳, 주소
	private String mPicture; // 회원 사진
	private String mLang;    // 기술 스택명 
	
	public Member() {
		super();
	}
	
	
	// 로그인에 필요한 생성자 
	public Member(String mId, String mPwd) {
		super();
		this.mId = mId;
		this.mPwd = mPwd;
	}
	
	// 전체 데이터를 받는 생성자 & 조회용 생성자 
	public Member(String mId, String mName, String mPwd, String email, String phone, String mContent, String mBirth,
			String mAddress, String mPicture, String mLang) {
		super();
		this.mId = mId;
		this.mName = mName;
		this.mPwd = mPwd;
		this.email = email;
		this.phone = phone;
		this.mContent = mContent;
		this.mBirth = mBirth;
		this.mAddress = mAddress;
		this.mPicture = mPicture;
		this.mLang = mLang;
	}
	



	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public String getmPwd() {
		return mPwd;
	}
	public void setmPwd(String mPwd) {
		this.mPwd = mPwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getmContent() {
		return mContent;
	}
	public void setmContent(String mContent) {
		this.mContent = mContent;
	}
	public String getmBirth() {
		return mBirth;
	}
	public void setmBirth(String mBirth) {
		this.mBirth = mBirth;
	}
	public String getmAddress() {
		return mAddress;
	}
	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}
	public String getmPicture() {
		return mPicture;
	}
	public void setmPicture(String mPicture) {
		this.mPicture = mPicture;
	}
	public String getmLang() {
		return mLang;
	}
	public void setmLang(String mLang) {
		this.mLang = mLang;
	}
	
	
	@Override
	public String toString() {
		return "Member [mId=" + mId + ", mName=" + mName + ", mPwd=" + mPwd + ", email=" + email + ", phone=" + phone
				+ ", mContent=" + mContent + ", mBirth=" + mBirth + ", mAddress=" + mAddress + ", mPicture=" + mPicture
				+ ", mLang=" + mLang + "]";
	}
	
	
	
	

}
