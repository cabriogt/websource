package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CartAdd
 */
@WebServlet("/add")
public class CartAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		
		String product = request.getParameter("product");
		
		HttpSession session = request.getSession();
		ArrayList<String> cartList = (ArrayList<String>)session.getAttribute("cartList");
		
		if (cartList!=null) {
			cartList.add(product);
			
		}else {
			cartList= new ArrayList<String>();
			cartList.add(product);
			session.setAttribute("cartList", cartList);
			
		}
		
		
		
		//session
		//HttpSession session = request.getSession();
		//session.setAttribute("product", product);
		
		//response .sendRedirect("/cart/basket.jsp");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter  out = response.getWriter();
		out.print("<!DOCTYPE html>");
		out.print("<html><head><meta charset=\"UTF-8\">");
		out.print("<title>user info</title></head>");
		out.print("<body>");
		out.print("<p><a href='/cart/cart.jsp'>algo</a></p>");
		out.print("<p><a href='/cart/basket.jsp'>algo</a></p>");
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
