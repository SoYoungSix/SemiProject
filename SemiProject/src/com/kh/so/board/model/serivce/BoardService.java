package com.kh.so.board.model.serivce;

import static com.kh.so.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.so.board.model.dao.BoardDAO;
import com.kh.so.board.model.vo.Board;

public class BoardService {
	private Connection con;
	private BoardDAO bDAO = new BoardDAO();
	
	public int getListCount() {
		con = getConnection();
		
		int result = bDAO.getListCount(con);
		
		close(con);
		
		return result;
	}

	public ArrayList<Board> selectList(int currentPage, int limit) {
		con = getConnection();
		
		ArrayList<Board> list = bDAO.selectList(con, currentPage, limit);

		close(con);
		
		return list;
	}

	public int insertBoard(Board b) {
		con = getConnection();
		int result = bDAO.insertBoard(con,b);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public Board selectOne(int bno) {
		con = getConnection();
		Board b = bDAO.selectOne(con, bno);
		
		close(con);
		
		return b;
	}

}
