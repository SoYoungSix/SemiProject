package com.kh.so.common;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class JDBCTemplate {

	public static Connection getConnection() {
		
		Connection con = null;
		
		try {
			// 데이터 베이스 연결 방법
			// 1. 일반적인 연결  (옛날코드)
			/*
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:49161:xe",
					"JSP", "JSP");
			*/
			
			// 2. JNDI 방식 (요즘코드)
			//  - 데이터 베이스 연결 객체인 DataSource를 사용하여 
			//    context.xml에 데이터베이스 연결 정보를 등록하고 
			//    해당 정보로 데이터 베이스를 연결하는 방법 
			
			//  ** JNDI (Java Naming and Directory Interface)
			//	   Java 코드를 특정 폴더나 파일의 이름으로 가져오는 방식 
			//     (향후 배울 스프링 프레임워크에 좀더 흡사한 방식) 
			Context initContext = new InitialContext();
	         
	        DataSource ds = (DataSource)initContext
	                                 .lookup("java:comp/env/jdbc/oracleDB");
			// java의 component들 중 environment가 jdbc인.. oracleDB를 선택해서 Datasource로 가져와라!
			// context.xml에도 나와있다. Context.xml을 객체로 가져오는데 java코드로 읽어서 가져올 것이고 
	        // 안의 component(설정)들 중에 환경env 에서.. 
	        
	        con = ds.getConnection();
			
	        // =====================================================
	        // 2가 좀더 번거롭지만 이를 통해 설정할 수 있는 부분이 더 많다.
	        
	        // 자바개발자는 데이터베이스까지 잘 다루지 않는다. 자바만 함. DB개발자는 자바를 DB만 개발한다. 서로를 건들지 않음.
	        // 근데 1의 코드를 보면 자바 개발자가 DB설정까지 다 해야 한다. 혼자 다 만들어야하네..?ㅠ 
	        // 얼마나 불편하고 힘들겠어요? 그래서 이렇게 못하겠다~ 나는 2에서 lookup()을 통해 부를테니 DBA가 알아서 
	        // context를 작성해주세요~ 하는 것. 
	        // 그럼 DB개발자가 context를 설정하는 것. 그럼 자바개발자는 JDBCTemplate만 보내고 끝나는 것.
	        // 바로 '역할분담'이 가능해지기 때문에 많이 쓰인다. 
			
			con.setAutoCommit(false);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	} 
	
	// 오버로딩 기술 적용!
	public static void close(Connection con) {
		try {
			if(con != null && !con.isClosed()) 
				con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt) {
		try {
			if(stmt != null && ! stmt.isClosed())
				stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rset) {
		try {
			
			if(rset != null && ! rset.isClosed())
				rset.close();
		} catch(SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void commit(Connection con) {
		try {
			if(con != null && ! con.isClosed())
				con.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection con) {
		try {
			if(con != null && ! con.isClosed())
				con.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
