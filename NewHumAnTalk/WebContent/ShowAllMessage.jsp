<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="md.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta  http-equiv="Expires"  CONTENT="0">   
<meta  http-equiv="Cache-CoNTROL" ONTENT="no-cache">   
<meta  http-equiv="Pragma" CONTENT="no-cache">
</head>
<body style="align:center">
<div id="talks" align="center">
    
           <br><font size=6 ><b>humAn talks</b></font> 
    <HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="80%" color=#987cb9 SIZE=3></HR>
        </div>
        <div align="center">
        <% 
        List<Message> list=(List)request.getAttribute("list");
								if(list!=null){
									Iterator<Message> e=list.iterator();
									while(e.hasNext()){
										Message m=e.next();
		%>
		<%if(m.getType().equals("text")) {%>
		<center><font size=1 > <<%=m.getDate()+" "+m.getTime()%>></font></center><br>
		<center><font  size=3><%=m.getId()%></font> : <font size=4> <b><%=m.getContent()%></b></font></center><br>
		<hr width=10%></hr>
        <% } else {%>
		<center><font size=1 > <<%=m.getDate()+" "+m.getTime()%>></font></center><br>
		<center><font  size=3><%=m.getId()%></font> : <br><img src=<%="file:///"+m.getContent()%> width=200></center><br>
		<hr width=10%></hr>
        <%}}}%>
	</div>
</body>
</html>