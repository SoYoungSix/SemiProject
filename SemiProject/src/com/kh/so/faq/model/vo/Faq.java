package com.kh.so.faq.model.vo;

import java.io.Serializable;
import java.util.Date;

public class Faq implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private int faqNo; 		//faq번호
	private int gNo; 	    //모임번호
	private String writer;     //작성자
	private String fContent;//faq내용
	private int refFno;	    //참조 faq번호
	private String	fLevel; //댓글 레벨
	private Date fDate;		//작성일
	
	
	public Faq() { super(); }

	//FAQ 생성용 생성자
	public Faq(int faqNo, int gNo, String writer,String fContent, int refFno, String fLevel, Date fDate) {
		super(); 
		this.faqNo = faqNo;
		this.gNo = gNo;
		this.writer = writer;
		this.fContent = fContent;
		this.refFno = refFno;
		this.fLevel = fLevel;
		this.fDate = fDate;
	}

	//수정용 생성자
	public Faq(String fContent, int refFno, String fLevel) {
		super();
		this.fContent = fContent;
		this.refFno = refFno;
		this.fLevel = fLevel;
	}

	@Override
	public String toString() {
		return "Faq [faqNo=" + faqNo + ", gNo=" + gNo + ", writer="+ writer +", fContent=" + fContent + ", refFno=" + refFno + ", fLevel="
				+ fLevel + ", fDate=" + fDate + "]";
	}

	public int getFaqNo() {
		return faqNo;
	}

	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}

	public int getgNo() {
		return gNo;
	}

	public void setgNo(int gNo) {
		this.gNo = gNo;
	}
	

	public String getwriter() {
		return writer;
	}

	public void setwriter(String writer) {
		this.writer = writer;
	}

	public String getfContent() {
		return fContent;
	}

	public void setfContent(String fContent) {
		this.fContent = fContent;
	}

	public int getRefFno() {
		return refFno;
	}

	public void setRefFno(int refFno) {
		this.refFno = refFno;
	}

	public String getfLevel() {
		return fLevel;
	}

	public void setfLevel(String fLevel) {
		this.fLevel = fLevel;
	}

	public Date getfDate() {
		return fDate;
	}

	public void setfDate(Date fDate) {
		this.fDate = fDate;
	}

	
	

	
	
	
	
	
}
