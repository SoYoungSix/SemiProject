package com.kh.so.board.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable{

	private static final long serialVersionUID = 1L; // 조원과 상의 
	
	private int bno; // 게시글 번호 
	private int gno; // 모임번호 
	private String mId; // 회원명/작성자. 지금 entity에 MEMBER_ID로 되어있음. 
	private String bWriter;  // 작성자 
	private String bTitle; // 게시글제목 
	private String bContent; // 게시글 내용 
	private String bCount; // 조회수 
	private String status; // 게시글 삭제 여부 (Y : 일반, N : 삭제함)
	private Date enrollDate; // 작성일 
	
	// private String boardFile;  // 사진게시판이 아니니까 보류. 아마 필요없음.
	
	// 기본 생성자 
	public Board() {
		super();
	}
	
	// 게시글 생성용 생성자 
	public Board(String bWriter, String bTitle, String bContent) {
		super();
		this.bWriter = bWriter;
		this.bTitle = bTitle;
		this.bContent = bContent;
	}
	
	
	// 전체 데이터를 가져오기 위한 생성자 
	public Board(int bno, int gno, String mId, String bWriter, String bTitle, String bContent, String bCount, String status, Date enrollDate) {
		super();
		this.bno = bno;
		this.gno = gno;
		this.mId = mId;
		this.bWriter = bWriter;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bCount = bCount;
		this.status = status;
		this.enrollDate = enrollDate;
	}
	
	public int getBno() {
		return bno;
	}


	public void setBno(int bno) {
		this.bno = bno;
	}

	public int getGno() {
		return gno;
	}

	public void setGno(int gno) {
		this.gno = gno;
	}


	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public String getbCount() {
		return bCount;
	}

	public void setbCount(String bCount) {
		this.bCount = bCount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getbWriter() {
		return bWriter;
	}

	public void setbWriter(String bWriter) {
		this.bWriter = bWriter;
	}

	@Override
	public String toString() {
		return "Board [bno=" + bno + ", gno=" + gno + ", mId=" + mId + ", bWriter=" + bWriter + ", bTitle=" + bTitle
				+ ", bContent=" + bContent + ", bCount=" + bCount + ", status=" + status + ", enrollDate=" + enrollDate
				+ "]";
	}

	
	

	
	

}
