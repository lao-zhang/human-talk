<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="md.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta  http-equiv="Expires"  CONTENT="0">   
<meta  http-equiv="Cache-CoNTROL" ONTENT="no-cache">   
<meta  http-equiv="Pragma" CONTENT="no-cache">
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js">
      </script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>talks</title>
<script type="text/JavaScript">
function myFunction()
{
	var i=1;
 jQuery(function(){
         //将span添加到追加到content1的后面
          var s1=document.getElementById("userid").value;
          var s2=document.getElementById("word").value;
     //var reg = /^.*[~!@#\$%\^&\*\(\)_+\-=\[\]\{\}\\\|\'\";:,\<\.\>\/\?\s+].*$/;
      var reg = /^.*[\<\>\V+].*$/;
     if(s2=="")
         {alert("说点什么再提交呗 (´・ω・`)");
         i=0;}
     else if(s1==""){
    	 alert("为什么不取个有趣的名字呢(´・ω・`)");
    	 i=0;
     }
     else if(reg.test($("#userid").val())||reg.test($("#word").val()))
         {alert("不要输入违规字符哦 (。・`ω´・)");
          document.getElementById("userid").value="";
          document.getElementById("word").value="";
          i=0;
         }
 })
 if(i==0)
	 return false;
}
function F5(){
	window.location.href="http://120.78.50.122:8080/talk/addMessage";
}
</script>
</head>
<body style="align:center">
<div id="talks" align="center">
     <form name="myFrom" action="addMessage" method="post"> 
              <b>id:</b>
              <input type="text" id="userid" name="userid" size=10>
              <b>talks:</b>
              <input type="text"  id="word" name="word" size=20 >
              <input type="submit" value="提交" onclick="return myFunction();">
              <input type="reset" value="重置">
              <input type="button" value="刷新" onclick="F5()">
              </form>
              
           <br><font size=6 ><b>humAn talks</b></font> 
    <HR style="FILTER: alpha(opacity=100,finishopacity=0,style=3)" width="80%" color=#987cb9 SIZE=3></HR>
        </div>
        <div align="center">
        <center><font size=1 color= #ADADAD>&lt;?/? ?:?:?&gt;</font></center><br>
		<center><font  size=3 color= #ADADAD >sans</font> : <font size=4 color= #ADADAD> <b>或许你只想简单讲几句</b></font></center><br>
		<hr width=10%></hr>
        <% 
        List<Message> list=(List)request.getAttribute("list");
								if(list!=null){
									Iterator<Message> e=list.iterator();
									while(e.hasNext()){
										Message m=e.next();
		%>
		<center><font size=1 > <<%=m.getDate()%>></font></center><br>
		<center><font  size=3><%=m.getId()%></font> : <font size=4> <b><%=m.getWord()%></b></font></center><br>
		<hr width=10%></hr>
        </div>
        <%}}%>

</body>
</html>