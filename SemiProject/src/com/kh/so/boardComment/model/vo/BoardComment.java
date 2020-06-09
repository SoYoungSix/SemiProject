package com.kh.so.boardComment.model.vo;

import java.io.Serializable;
import java.util.Date;

public class BoardComment implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private int bcno; //댓글 번호
	private String writer; //작성자
	private int	bNo; 	// 게시글 번호
	private int gNo; 	// 모임번호
	private String bComment;  //댓글 내용
	private Date cDate; //댓글 작성날짜
	private int refCno; //참조댓글번호f
	private int cLevel; //댓글레벨
	
	public BoardComment() {super();}
	
	// 전체 생성자 
	
	// bno, cno 수정하기. 
	public BoardComment(int bcno, String writer, int bNo, int gNo, String bComment, Date cDate, int refCno, int cLevel) {
		super();
		this.bcno = bcno;
		this.writer = writer;
		this.bNo = bNo;
		this.gNo = gNo;
		this.bComment = bComment;
		this.cDate = cDate;
		this.refCno = refCno;
		this.cLevel = cLevel;
	}

	//댓글 입력용 생성자
	public BoardComment(String bComment, int refCno, int cLevel) {
		super();
		
		this.bComment = bComment;
		this.refCno = refCno;
		this.cLevel = cLevel;
	}

	@Override
	public String toString() {
		return "boardComment [bcno=" + bcno + ", writer=" + writer + ", bNo=" + bNo + ", gNo=" + gNo + ", bComment="
				+ bComment + ", cDate=" + cDate + ", refCno=" + refCno + ", cLevel=" + cLevel + "]";
	}

	public int getBcno() {
		return bcno;
	}

	public void setBcno(int bcno) {
		this.bcno = bcno;
	}

	public String getwriter() {
		return writer;
	}

	public void setwriter(String writer) {
		this.writer = writer;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public int getgNo() {
		return gNo;
	}

	public void setgNo(int gNo) {
		this.gNo = gNo;
	}

	public String getbComment() {
		return bComment;
	}

	public void setbComment(String bComment) {
		this.bComment = bComment;
	}

	public Date getcDate() {
		return cDate;
	}

	public void setcDate(Date cDate) {
		this.cDate = cDate;
	}

	public int getRefCno() {
		return refCno;
	}

	public void setRefCno(int refCno) {
		this.refCno = refCno;
	}

	public int getcLevel() {
		return cLevel;
	}

	public void setcLevel(int cLevel) {
		this.cLevel = cLevel;
	}

}
