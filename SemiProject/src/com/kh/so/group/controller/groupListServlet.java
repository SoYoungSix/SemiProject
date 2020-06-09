package com.kh.so.group.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.so.group.model.service.GroupService;
import com.kh.so.group.model.vo.Group;

@WebServlet("/groupList.do")
public class groupListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public groupListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Group> list = new ArrayList<Group>();
		
		GroupService gl = new GroupService();
	
		int limit;
		// 최대 그룹카드 처음부터 다보여준다
		limit = 1;
		
		list = gl.selectList(limit);
		
		String page = "";
		if(list!=null) {
			request.setAttribute("list", list);
			
			page = "views/group/GroupDetail.jsp";
		} else {
			request.setAttribute("error-msg", "게시글목록조회실패");
			System.out.println("에러발생");
			page = "views/common/error.jsp";
		}
		System.out.println("gggg");
		request.getRequestDispatcher(page).forward(request, response);
				
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
