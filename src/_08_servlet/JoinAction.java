package _08_servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoinAction")
public class JoinAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		String id    = request.getParameter("id");
		String pw    = request.getParameter("pw");
		String name  = request.getParameter("name");
		String email = request.getParameter("email");
		
		String[] temp = request.getParameterValues("hobby");
		String hobby = "";
		for (int i = 0; i < temp.length; i++) {
			hobby += temp[i] + " ";
		}
		
		// request.setAttribute("속성명", 데이터); 메서드를 이용하여 view 화면으로 데이터를 전송한다.
		request.setAttribute("id", id);
		request.setAttribute("pw", pw);
		request.setAttribute("name", name);
		request.setAttribute("email", email);
		request.setAttribute("hobby", hobby);
		
		RequestDispatcher dis = request.getRequestDispatcher("chapter08_servlet/02_joinAction.jsp");
		dis.forward(request, response);
		
	}

}
