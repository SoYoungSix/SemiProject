package com.kh.so.group.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

@WebServlet("/gDelete.gr")
public class GroupDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GroupDeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		int maxSize = 1024 * 1024 * 10; // 10MB
//
//		if(! ServletFileUpload.isMultipartContent(request)) {
//			System.out.println("GroupDeleteServlet에서 에러 발생 : multipart로 전송되지않음.");
//			request.setAttribute("error-msg", 
//					             "multipart로 전송되지 않았습니다.");
//			
//			request.getRequestDispatcher("views/common/errorPage.jsp")
//			       .forward(request, response);
//		}
		
		
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
