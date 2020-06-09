package com.kh.so.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.so.board.model.serivce.BoardService;
import com.kh.so.board.model.vo.Board;

/**
 * Servlet implementation class BoardSelectOneServlet
 */
@WebServlet("/selectOne.bo")
public class BoardSelectOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardSelectOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		Board b = new BoardService().selectOne(bno);
		
		// 댓글은 나중에 구현해볼게요..
		// ArrayList<BoardComment> clist = new BoardCommentService().selectList(bno);
		
		String page ="";
		
		if(b != null) {
			request.setAttribute("board", b);
			// 일단 불러오는거부터...
			// request.setAttribute("clist", clist);
			page = "views/board/boardDetail.jsp";
			System.out.println(b);
		} else {
			request.setAttribute("error-msg", "게시글 상세 보기 실패");
			page = "views/common/errorPage.jsp";
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
