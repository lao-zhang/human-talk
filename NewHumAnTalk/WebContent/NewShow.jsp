<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="md.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>留言墙</title>
    <link rel="stylesheet" href="css/message.css">
    <link rel="stylesheet" href="css/windowPop.css">
    <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/1.10.1/jquery.min.js"></script>
    <script type="text/javascript" src="script/message.js"></script>
    <script type="text/javascript" src="script/windowPop.js"></script>
    
</head>
<body>

<!--短文本弹窗-->
<div id="windowPop" class="windowPop">
<div class="caption pop_1">
    <span class="close">&times</span>
    <h3>写下你的故事</h3>
    <p class="count">还能输入<span class="totalWord"></span>字</p>
    <!--表单提交的内容，只有textarea的内容-->
    <form name="myFrom" action="addText" method="post" >
    <div class="mainContent">
    <div class="data-input"><textarea  onkeydown="count(this)" onkeyup="count(this)" placeholder="说点什么？"  id="word" name="word" maxlength="140"></textarea></div>
        <button type="submit" class="uploadText">提交</button>
    </div>
    </form>
</div>
 <!--图片弹窗-->
    <div class="caption pop_2">
    <span class="close">&times</span>
    <form action="addPhoto" id="imgForm" enctype="multipart/form-data" method="post">
        <div class="mainContent">
            上传图片:&nbsp;&nbsp;&nbsp;<input type="file" id="file" name="filename" accept="image/*">
            <div class="data-input showImg"><img src="" alt="" class="img"></div>
            <button type="submit" class="uploadImg">提交</button>
        </div>
    </form>
        <p class="remindText"></p>
    </div>
</div>

<script>
    	   	    	   			$(".count").hide();
    	   		    function count(e) {
    	   		        $(".count").fadeIn();
    	   		        var total = 140;
    	   		        var temp = $(e).val();
    	   		        var Length = temp.length;
    	   		        var totalWord=$(".totalWord");
    	   		        if(Length>=total){
    	   		            totalWord.html(0);
    	   		        }
    	   		        else{
    	   		            totalWord.html(total - Length);
    	   		        }
    	   		    }
    </script>



<!--导航页面——最上面的栏目-->
<nav>
    <div id="head">
        <div class="header">
      	<!--logo部分-->
    		<div id="logo">
        <a href="listAllMessage" class="img-logo"></a>
    </div>

        <div class="right">
        <ul>
            <li><a href="http://106.14.116.5/demo.html" target="_blank">2048游戏</a></li>
            <li><a href="http://106.14.116.5/html5-fruit-ninja/index.html" target="_blank">水果忍者</a></li>
            <li><a href="">链接3</a></li>
            <li><a href="">链接4</a></li>
            <li><a href="">链接5</a></li>
        </ul>
        <!--注册登录-->
    <div class="login">
        <ul>
        		<li></li>
        		<li></li>
            <li><a href="login.jsp">登录</a></li>
            <li></li>
        </ul>
    </div>
    </div>
    </div>
    </div>
</nav> 
<!--回到顶部按键-->
<div id="goTop">
    <a href="#"  class="goTop"  title="回到顶部">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" t="1524186412694" class="icon" style="width: 19px;height: 12px;margin-top: 16px;" viewBox="0 0 1024 1024" version="1.1" p-id="5498" width="200" height="200"><defs><style type="text/css"/></defs><path d="M512 212.423111L0 724.437333l38.698667 38.712889L512 289.848889l473.301333 473.301333L1024 724.437333z" p-id="5499"/></svg>
    </a>
</div>
<!--主题内容部分-->
<content>
    <div id="middle">
        <!--主题内容左边-->
        <div class="article">
            <div class="top">
         <!--主题内容左边导航-->
        <div class="nav">
            <ul>
                <li><a href="" id="text"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" t="1524151115948" class="icon" style="margin-top: 19px;width: 22px;height: 22px;" viewBox="0 0 1024 1024" version="1.1" p-id="4671" width="200" height="200"><defs><style type="text/css"/></defs><path d="M247.0912 996.1472 100.5568 996.1472c-39.936 0-72.4992-32.5632-72.4992-72.4992L28.0576 81.92c0-39.936 32.5632-72.4992 72.4992-72.4992l766.0544 0c39.936 0 72.4992 32.5632 72.4992 72.4992l0 210.5344c0 12.3904-10.0352 22.528-22.528 22.528s-22.528-10.0352-22.528-22.528L894.0544 81.92c0-15.1552-12.288-27.5456-27.5456-27.5456L100.5568 54.3744c-15.1552 0-27.5456 12.288-27.5456 27.5456L73.0112 923.648c0 15.1552 12.288 27.5456 27.5456 27.5456l146.5344 0c12.3904 0 22.528 10.0352 22.528 22.528S259.4816 996.1472 247.0912 996.1472z" p-id="4672"/><path d="M745.2672 192.1024 174.6944 192.1024c-12.3904 0-22.528-10.0352-22.528-22.528s10.0352-22.528 22.528-22.528l570.5728 0c12.3904 0 22.528 10.0352 22.528 22.528S757.6576 192.1024 745.2672 192.1024z" p-id="4673"/><path d="M437.6576 429.6704 174.6944 429.6704c-12.3904 0-22.528-10.0352-22.528-22.528s10.0352-22.528 22.528-22.528l262.9632 0c12.3904 0 22.528 10.0352 22.528 22.528S450.1504 429.6704 437.6576 429.6704z" p-id="4674"/><path d="M620.6464 310.8864 174.6944 310.8864c-12.3904 0-22.528-10.0352-22.528-22.528s10.0352-22.528 22.528-22.528l445.952 0c12.3904 0 22.528 10.0352 22.528 22.528S633.1392 310.8864 620.6464 310.8864z" p-id="4675"/><path d="M399.6672 1009.8688c-6.2464 0-12.288-2.56-16.5888-7.2704-5.2224-5.7344-7.168-13.7216-5.12-21.2992l40.8576-146.6368c1.024-3.6864 3.072-7.168 5.7344-9.8304l408.9856-408.9856c14.1312-14.0288 36.9664-14.0288 51.0976 0l97.792 97.792c6.8608 6.8608 10.5472 15.872 10.5472 25.4976s-3.7888 18.7392-10.5472 25.4976L928.8704 618.496c-4.1984 4.1984-9.9328 6.5536-15.872 6.5536s-11.6736-2.3552-15.872-6.5536l-66.048-66.048c-8.8064-8.8064-8.8064-23.04 0-31.8464s23.04-8.8064 31.8464 0l50.176 50.176 31.4368-31.4368L859.136 454.0416 460.6976 852.48 431.104 958.6688 546.7136 936.96l231.7312-231.7312c5.0176-5.4272 50.7904-52.6336 107.2128-56.7296 12.3904-0.9216 23.1424 8.3968 24.064 20.7872 0.9216 12.3904-8.3968 23.1424-20.7872 24.064-40.3456 2.9696-77.4144 42.2912-77.824 42.7008-0.2048 0.2048-0.4096 0.512-0.7168 0.7168L573.5424 973.7216c-3.1744 3.1744-7.2704 5.3248-11.776 6.2464l-158.0032 29.5936C402.432 1009.7664 401.1008 1009.8688 399.6672 1009.8688z" p-id="4676"/></svg><span>短文</span></a></li>
                <li><a href="" id="picture"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" t="1524185987668" class="icon" style="margin-top: 19px;width: 22px;height: 22px;" viewBox="0 0 1024 1024" version="1.1" p-id="4115" width="200" height="200"><defs><style type="text/css"/></defs><path d="M288 480c54.4 0 96-41.6 96-96s-41.6-96-96-96-96 41.6-96 96 41.6 96 96 96z m0-128c19.2 0 32 12.8 32 32s-12.8 32-32 32-32-12.8-32-32 12.8-32 32-32z" p-id="4116"/><path d="M864 160h-704c-54.4 0-96 41.6-96 96v512c0 54.4 41.6 96 96 96h704c54.4 0 96-41.6 96-96v-512c0-54.4-41.6-96-96-96z m-736 608v-512c0-19.2 12.8-32 32-32h704c19.2 0 32 12.8 32 32v364.8l-169.6-169.6c-38.4-38.4-99.2-38.4-134.4 0l-348.8 348.8h-83.2c-19.2 0-32-12.8-32-32z m736 32h-531.2l304-304c12.8-12.8 32-12.8 44.8 0l214.4 214.4v57.6c0 19.2-12.8 32-32 32z" p-id="4117"/></svg><span>图片</span></a></li>
                <li><a href=""><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" t="1524186061713" class="icon" style="margin-top: 19px;width: 22px;height: 22px;" viewBox="0 0 1024 1024" version="1.1" p-id="4821" width="200" height="200"><defs><style type="text/css"/></defs><path d="M661.648 118H249.104c-39.088 0-70.304 31.752-70.304 70.304v647.392c0 39.096 31.752 70.304 70.304 70.304h525.8c38.552 0 70.296-31.752 70.296-70.304V301.56L661.648 118z m12.664 74.704l96.176 96.184H684.584c-5.408 0-10.272-4.864-10.272-10.272V192.704z m126.928 642.992a26.24 26.24 0 0 1-26.344 26.352H249.104a26.24 26.24 0 0 1-26.344-26.352V188.304a26.24 26.24 0 0 1 26.344-26.344v-0.464h381.328v117.192c0 29.824 24.416 54.16 54.16 54.16h116.656v502.848z" p-id="4822"/><path d="M348.68 386.072h188.968a21.84 21.84 0 0 0 21.944-21.936 21.84 21.84 0 0 0-21.944-21.944H348.68a21.832 21.832 0 0 0-21.944 21.944 21.84 21.84 0 0 0 21.944 21.936zM674.848 644.8H348.68c-12.208 0-21.944 9.744-21.944 21.944s9.736 21.944 21.944 21.944h326.168c12.208 0 21.944-9.744 21.944-21.944S687.064 644.8 674.848 644.8zM348.68 495.856a21.824 21.824 0 0 0-21.944 21.944 21.832 21.832 0 0 0 21.944 21.936h326.168a21.832 21.832 0 0 0 21.944-21.936 21.832 21.832 0 0 0-21.944-21.944H348.68z" p-id="4823"/></svg><span>文章</span></a></li>
            </ul>
        </div>
        </div>
            <!--所有要显示的文章-->
        <div class="content">
			 <ol>
        <% 
        List<Message> list=(List)request.getAttribute("list");
								if(list!=null){
									Iterator<Message> e=list.iterator();
									while(e.hasNext()){
										Message m=e.next();
		%>
			
		<%if(m.getType().equals("text")) {%>
          	<li class="row">
                <div class="author">
                    <p class="authorId"><%=m.getId()%></p>
                    <span class="displayTime"><%=m.getDate()+" "+m.getTime()%></span>
                </div>
                <div class="text"><%=m.getContent()%></div>
            </li>
        <% } else {%>
   			<li class="img-row">
                <div class="author">
                    <p class="authorId"><%=m.getId()%></p>
                    <span class="displayTime"><%=m.getDate()+" "+m.getTime()%></span>
                </div>
                <div class="imgShow"><img src=<%="file:///"+m.getContent()%>></div>
            </li>		
        <%}}}%>
        	   </ol>  
       </div>
            <!--主体右侧部分-->
        </div>

     <div class="aside">
            <div id="weather">
                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" t="1524392198208" class="icon" style="margin-top: 5px;margin-left: 5px;width: 20px;height: 20px;" viewBox="0 0 1024 1024" version="1.1" p-id="4141" width="200" height="200"><defs><style type="text/css"/></defs><path d="M512 128a256 256 0 0 0-256 256c0 123.52 97.92 275.84 208 483.84a55.04 55.04 0 0 0 96 0C670.08 659.84 768 507.52 768 384a256 256 0 0 0-256-256z m0 384a128 128 0 1 1 128-128 128 128 0 0 1-128 128z" fill="" p-id="4142"/></svg>
                <span class="ipAddress"></span>
                <div class="date_1">
                    <div class="localDate"></div>
                    <div class="img-weather"><img src="" alt="" class="weatherImg">
                        <span class="localWeather"></span></div>
                </div>
                <div class="date_2">
                    <div class="localDate next-date"></div>
                    <div class="img-weather">
                    <img src="" alt="" class="nextWeatherImg">
                    <span class="localWeather localNextWeather"></span></div>
                </div>
            </div>
    <div class="extend-read">拓展阅读</div>

            <!--底部栏部分-->
            <div id="footer" class="pageAbout">
            	<ul class="changeItem">
            <%
				Integer pageCount=(Integer)request.getAttribute("pageCount");
				Integer curPage=(Integer)request.getAttribute("curPage");
				if(pageCount!=null&&curPage!=null){
					if(pageCount!=0&&curPage!=1){
			%>
                
                    <li><a href="listAllMessage?curPage=<%=1%>">首页</a></li>
                    <li><a href="listAllMessage?curPage=<%=curPage-1 %>">前一页</a></li>
            <%						
				}else{
			%>
					<li><a>首页</a></li>	 
					<li><a >前一页</a></li>
			<%						
				}	
			%>
			<%
					if(pageCount!=0&&curPage!=pageCount){
			%>
                    <li><a href="listAllMessage?curPage=<%=curPage+1 %>">下一页</a></li>
                    <li><a href="listAllMessage?curPage=<%=pageCount%>">尾页</a></li>
           	<%
					}else{
			%>	
					<li><a>下一页 </a></li>
					<li><a >尾页</a></li>
				
			<% 
					}
			%>	
			 	</ul>
                <ul class="changeCal">
                    <li>第<span><%=curPage %></span>页</li>
                    <li>共<span><%=pageCount%></span>页</li>
             <%
			}
			%>	
                </ul>
                <div id="info">
                    <!--<p>author~老zhang & 雷 · logo设计~路帘青 · 管理员~龙杰君</p>-->
                    <a href="#" class="about">关于我们</a>
                </div>
            </div>
        </div>
</content>
</body>
</html>