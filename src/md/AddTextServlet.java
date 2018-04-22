package md;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.UploadedImageFile;

public class AddTextServlet extends HttpServlet{
	public String turn(String str) {  

	    while (str.indexOf("\n") != -1) {  
	        str = str.substring(0, str.indexOf("\n")) + "<br>"  
	                + str.substring(str.indexOf("\n") + 1);  
	    }  
	    while (str.indexOf(" ") != -1) {  
	        str = str.substring(0, str.indexOf(" ")) + "&nbsp"  
	                + str.substring(str.indexOf(" ") + 1);  
	    }  
	    return str;  
	}  
	public void doGet(HttpServletRequest request,HttpServletResponse response)
	throws ServletException,IOException{
		doPost(request,response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		//HttpSession session=request.getSession();
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		Calendar now = Calendar.getInstance();
		String date = now.get(Calendar.YEAR)+":"+(now.get(Calendar.MONTH)+1)+":"+now.get(Calendar.DAY_OF_MONTH);
		String time = now.get(Calendar.HOUR_OF_DAY)+":"+now.get(Calendar.MINUTE)+":"+now.get(Calendar.SECOND);
		//String id = request.getParameter("userid");
		String id="laozhang";
		String type = "text";
		String content = turn(request.getParameter("word"));
		MessageDBAccess md=new MessageDBAccess();
		Message m=new Message(date,time,id,type,content);
		md.addMessage(m);
		request.getRequestDispatcher("/listAllMessage").forward(request, response);
	}

}
