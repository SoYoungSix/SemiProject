package com.kh.so.boardComment.model.service;

import java.sql.Connection;
import java.util.ArrayList;


import com.kh.so.boardComment.model.dao.BoardCommentDAO;
import com.kh.so.boardComment.model.vo.BoardComment;



public class BoardCommentService {
	private Connection con;
	private BoardCommentDAO bcoDAO = new BoardCommentDAO();
	
	public int insertComment(BoardComment bco) {
		
		return 0;
	}
	
	public ArrayList<BoardComment> selectList(int bno) {
		return null;
	}
	
	public int updateComment(BoardComment bco) {
		return 0;
	}
	
	public int deleteComment(int cno) {
		return 0;
	}
}
