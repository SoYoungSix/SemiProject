package com.kh.so.attachment.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Attachment implements Serializable{

	private static final long serialVersionUID = 23L; // 이따가 조원과 상의 
	
	private int pno; // Picture num
	private int bno; // Board num
	private int gno; // Group num
	private String mName; // Member name // MEMBER_ID - 이름?? 
	private String filePath;
	private Date uploadDate; // 업로드일 
	private Boolean status; // 상태 // VARCHAR2(1)에서 BOOLEAN으로 수정. 
	
	public Attachment() {
		super();
	}

	// 전체 데이터를 가져오기 위한 생성자 & 데이터 조회를 위한 생성자 
	public Attachment(int pno, int bno, int gno, String mName, String filePath, Date uploadDate, Boolean status) {
		super();
		this.pno = pno;
		this.bno = bno;
		this.gno = gno;
		this.mName = mName;
		this.filePath = filePath;
		this.uploadDate = uploadDate;
		this.status = status;
	}


	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
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

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Attachment [pno=" + pno + ", bno=" + bno + ", gno=" + gno + ", mName=" + mName + ", filePath="
				+ filePath + ", uploadDate=" + uploadDate + ", status=" + status + "]";
	}
	

}
