package com.kh.so.group.model.dao;

import java.io.FileNotFoundException;


import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.so.group.model.vo.Group;

import static com.kh.so.common.JDBCTemplate.*;

public class GroupDAO {
	private Properties prop;
	
	public GroupDAO() {
		prop = new Properties();
		
		String filePath = GroupDAO.class
								  .getResource("/config/group.properties")
								  .getPath();
		
		try {
			prop.load(new FileReader(filePath));
			
		} catch (IOException e) {
			System.out.println("GroupDAO에서 group.properties를 읽어오는 도중 문제 발생");
			e.printStackTrace();
		}
	}
	
	public Group selectOne(Connection con, int gno) {
		Group g = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectOne");
		
		
		return null;
		
	}


	public ArrayList<Group> selectList(Connection con, int limit) {
		ArrayList<Group> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, limit);
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Group>();
			
			while(rset.next()) {
				Group g = new Group();
				
				g.setGno(rset.getInt("GNO"));
				g.setgAddress(rset.getString("GADDRESS"));
				g.setgTitle(rset.getString("GTITLE"));
				g.setgContent(rset.getString("GCONTENT"));
				g.setgStartDate(rset.getDate("GSTARTDATE"));
				g.setgLang(rset.getString("GLANG"));
				
				list.add(g);
				
			}
				
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	public int insertGroup(Connection con, Group g) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertGroup");
	
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, g.getgTitle());
			pstmt.setDate(2, g.getgStartDate());
			pstmt.setDate(3, g.getgEndDate());
			pstmt.setString(4, g.getgAddress());
			pstmt.setString(5, g.getgContent());
			pstmt.setString(6, g.getgPicture());
			pstmt.setString(7, g.getgLang());
			pstmt.setInt(8, g.getgMoney());
				
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("sql에러 : insertGroup을 실행하던 중 에러 발생!!!");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int updateGroup(Connection con, Group g) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateGroup");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, g.getgTitle());
			pstmt.setDate(2, g.getgStartDate());
			pstmt.setDate(3, g.getgEndDate());
			pstmt.setString(4, g.getgAddress());
			pstmt.setString(5, g.getgContent());
			pstmt.setString(6, g.getgPicture());
			pstmt.setString(7, g.getgLang());
			pstmt.setInt(8, g.getgMoney());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("sql에러 : updateGroup을 실행하던 중 에러 발생!!!");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int deleteGroup(Connection con, int gno) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteGroup");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, gno);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			System.out.println("sql에러 : deleteGroup을 실행하던 중 에러 발생!!!");
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
	
	
	
	
	
	
	
	
	
	

}
