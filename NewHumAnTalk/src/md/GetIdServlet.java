package md;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class GetIdServlet extends HttpServlet{
		public void doGet(HttpServletRequest request,HttpServletResponse response)
		throws ServletException,IOException{
			doPost(request,response);
		}
		public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			HttpSession session = request.getSession();
			String userid=request.getParameter("userid");
			session.setAttribute("userid", userid);
			request.getRequestDispatcher("/listAllMessage").forward(request, response);
		}

}
