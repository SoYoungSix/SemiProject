package com.kh.so.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.so.board.model.serivce.BoardService;
import com.kh.so.board.model.vo.Board;
import com.kh.so.common.MyRenamePolicy;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class InsertBoardServlet
 */
@WebServlet("/bInsert.bo")
public class InsertBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		if(!ServletFileUpload.isMultipartContent(request)) {
					
					request.setAttribute("error-msg", "멀티 파트 형식으로 보내주세요~");
					request.getRequestDispatcher("views/common/errorPage.jsp")
					       .forward(request, response);
				}
				
				int maxSize = 1024 * 1024 * 10;
				
				String root = request.getServletContext().getRealPath("/resources");
				String savePath = root + "/boardUploadFiles/"; 
				
				MultipartRequest mre = new MultipartRequest(
											request, savePath, maxSize,
											"UTF-8", new DefaultFileRenamePolicy());
				
				String title = mre.getParameter("title");
				String content = mre.getParameter("content");
				String writer = mre.getParameter("userId");
				String fileName = mre.getFilesystemName("thumbnailImg1");
				
				Board b = new Board(title, content, fileName);
				System.out.println(fileName);
				// 추후에 변경 예정
				// Board b = new Board(title, content, writer, fileName);
				
				int result = new BoardService().insertBoard(b);
				
				if(result > 0) {
					response.sendRedirect("selectList.bo");
				} else {
					request.setAttribute("error-msg", "게시글 작성 실패!");
					request.getRequestDispatcher("views/common/errorPage.jsp")
										.forward(request, response);
				}
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
