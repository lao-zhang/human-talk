<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta  http-equiv="Expires"  CONTENT="0">   
<meta  http-equiv="Cache-CoNTROL" ONTENT="no-cache">   
<meta  http-equiv="Pragma" CONTENT="no-cache">
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js">
      </script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addText</title>
<script type="text/JavaScript">
function myFunction()
{
	var i=1;
 jQuery(function(){
      var s1=document.getElementById("userid").value;
      var s2=document.getElementById("word").value;
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
</script>
</head>
<body>
 <form name="myFrom" action="addText" method="post" > 
              <b>id:</b>
              <input type="text" id="userid" name="userid" size=10>
              <b>talks:</b>
              <input type="text"  id="word" name="word" size=20 >
              <input type="submit" value="提交" onclick="return myFunction();">
              <input type="reset" value="重置"><br>
              </form>

</body>
</html>