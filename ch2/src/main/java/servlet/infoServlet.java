package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class infoServlt
 */
@WebServlet("/info")
public class infoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
		 
		 String userid = request.getParameter("userid");
		 String password = request.getParameter("password");
		 String username = request.getParameter("username");
		 
		 response.setContentType("text/html;charset=utf-8");
		 PrintWriter out = response.getWriter();
		 out.print("<!DOCTYPE html>");
		 out.print("<html><head><meta charset=\"UTF-8\">");
		 out.print("<title>user info</title></head>");
		 out.print("<body>");
		 out.print("<p>id : "+userid+"</p>");
		 out.print("<p>password : "+password+"</p>");
		 out.print("<p>name: "+username+"</p>");
		 out.print("</body>");
		 out.print("</html>");
		 
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
