package md;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import md.Page;

public class ListMessageServlet extends HttpServlet{
	public void doGet(HttpServletRequest request,HttpServletResponse response)
	throws ServletException,IOException{
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	throws ServletException,IOException{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		int curPage=1;
		String temp=request.getParameter("curPage");
		if(temp!=null) {
			curPage=Integer.parseInt(request.getParameter("curPage"));
		}
		MessageDBAccess md=new MessageDBAccess();
		Map map=md.findAllMessage(curPage);
		ArrayList list=(ArrayList)map.get("list");
		Page pa=(Page)map.get("pa");
		request.setAttribute("curPage", pa.getCurPage());
		request.setAttribute("pageCount", pa.getPageCount());
		request.setAttribute("list", list);
		request.getRequestDispatcher("/NewShow.jsp").forward(request, response);
	}
	

}
