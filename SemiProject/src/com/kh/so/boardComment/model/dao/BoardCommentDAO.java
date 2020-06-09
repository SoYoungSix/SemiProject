package com.kh.so.boardComment.model.dao;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.so.boardComment.model.vo.BoardComment;



public class BoardCommentDAO {
	private Properties prop;

	public BoardCommentDAO() {
	}

	
	public int insertComment(Connection con, BoardComment bco) {
		return 0;
	}

	
	public ArrayList<BoardComment> selectList(Connection con, int bno) {
		return null;
	}

	
	public int updateComment(Connection con, BoardComment bco) {
		return 0;
	}

	
	public int deleteComment(Connection con, int cno) {
		return 0;
	}

}