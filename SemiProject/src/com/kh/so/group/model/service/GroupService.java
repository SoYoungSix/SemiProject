package com.kh.so.group.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import static com.kh.so.common.JDBCTemplate.*;


import com.kh.so.group.model.dao.GroupDAO;
import com.kh.so.group.model.vo.Group;

public class GroupService {
	
	private Connection con;
	private GroupDAO gDAO = new GroupDAO();
	
	
	// 메인에서 모임카드 불러오기 
	public ArrayList<Group> selectList(int limit) {
		con = getConnection();
		
		ArrayList<Group> list = gDAO.selectList(con, limit);
		
		close(con);
		return list;
	}
	
	// 모임카드 상세보기 
	public Group selectOne(int gno) {
		con = getConnection();
		Group g = gDAO.selectOne(con, gno);
		
		close(con);
		
		return g;
	}
	
	// 모임정보 등록
	public int insertGroup(Group g) {
		con = getConnection();
		int result = gDAO.insertGroup(con, g);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}
	
	
	
	// 모임정보 수정 
	public int updateGroup(Group g) {
		con = getConnection();
		int result = gDAO.updateGroup(con, g);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		return result;
	}
	
	
	// 모임정보 삭제 
	public int deleteGroup(int gno) {
		con = getConnection();
		int result = gDAO.deleteGroup(con, gno);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}
	
}
