package com.kh.so.group.model.vo;


import java.io.Serializable;
import java.sql.Date;

public class Group implements Serializable {
	
	private int gno;  // 모임번호
	private String gTitle;  // 모임제목
	private Date gStartDate;  // 모임시작일
	private Date gEndDate;  // 모임종료일
	private String gAddress;  // 모임 장소
	private String gContent;  // 모임 내용
	private Date gRegDate;  // 등록일
	private String gPicture;  // 그룹 사진
	private String gLang;  // 기술스택명
	private int gMoney;  // 모임회비. 이거 int형으로 바꿔야할거같은데.

	private String memberId; 
	private String gLeader;  // 모임장  // memberId가 필요하게 되면 추가. 
	
	private String gType;  // 모임 유형 (정기,단기)   // 일단 만들어놓고 나중에 생각. 
	


	// 기본 생성자
	public Group() {
		super();
	}
	
	// 그룹 생성용 생성자 
	public Group(String gTitle, Date gStartDate, Date gEndDate, String gAddress, String gContent, String gPicture,
			String gLang, int gMoney, String gLeader) {
		super();
		this.gTitle = gTitle;
		this.gStartDate = gStartDate;
		this.gEndDate = gEndDate;
		this.gAddress = gAddress;
		this.gContent = gContent;
		this.gPicture = gPicture;
		this.gLang = gLang;
		this.gMoney = gMoney;
		this.gLeader = gLeader;
	}

	public int getGno() {
		return gno;
	}



	public void setGno(int gno) {
		this.gno = gno;
	}



	public String getgTitle() {
		return gTitle;
	}



	public void setgTitle(String gTitle) {
		this.gTitle = gTitle;
	}



	public Date getgStartDate() {
		return gStartDate;
	}



	public void setgStartDate(Date gStartDate) {
		this.gStartDate = gStartDate;
	}



	public Date getgEndDate() {
		return gEndDate;
	}



	public void setgEndDate(Date gEndDate) {
		this.gEndDate = gEndDate;
	}



	public String getgAddress() {
		return gAddress;
	}



	public void setgAddress(String gAddress) {
		this.gAddress = gAddress;
	}



	public String getgContent() {
		return gContent;
	}



	public void setgContent(String gContent) {
		this.gContent = gContent;
	}



	public Date getgRegDate() {
		return gRegDate;
	}



	public void setgRegDate(Date gRegDate) {
		this.gRegDate = gRegDate;
	}



	public String getgPicture() {
		return gPicture;
	}



	public void setgPicture(String gPicture) {
		this.gPicture = gPicture;
	}



	public String getgLang() {
		return gLang;
	}



	public void setgLang(String gLang) {
		this.gLang = gLang;
	}



	public int getgMoney() {
		return gMoney;
	}



	public void setgMoney(int gMoney) {
		this.gMoney = gMoney;
	}



	public String getMemberId() {
		return memberId;
	}



	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}



	public String getgLeader() {
		return gLeader;
	}



	public void setgLeader(String gLeader) {
		this.gLeader = gLeader;
	}



	public String getgType() {
		return gType;
	}



	public void setgType(String gType) {
		this.gType = gType;
	}
	
	
	
}
