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
        <!--注册登录-->
            <img src="images/wallhaven-464314.png" alt="" class="login-in">
    <!--<div class="login">-->
        <!--<ul>-->
            <!--<li><[表情]>-->
            <!--<li><a href="">登录</a><[表情]>-->
            <!--<li><a href="">注册</a><[表情]>-->
        <!--</ul>-->
    <!--</div>-->
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
            <ul class="col">
                <li><a href="" id="text"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" t="1524151115948" class="icon" style="margin-top: 19px;width: 22px;height: 22px;" viewBox="0 0 1024 1024" version="1.1" p-id="4671" width="200" height="200"><defs><style type="text/css"/></defs><path d="M247.0912 996.1472 100.5568 996.1472c-39.936 0-72.4992-32.5632-72.4992-72.4992L28.0576 81.92c0-39.936 32.5632-72.4992 72.4992-72.4992l766.0544 0c39.936 0 72.4992 32.5632 72.4992 72.4992l0 210.5344c0 12.3904-10.0352 22.528-22.528 22.528s-22.528-10.0352-22.528-22.528L894.0544 81.92c0-15.1552-12.288-27.5456-27.5456-27.5456L100.5568 54.3744c-15.1552 0-27.5456 12.288-27.5456 27.5456L73.0112 923.648c0 15.1552 12.288 27.5456 27.5456 27.5456l146.5344 0c12.3904 0 22.528 10.0352 22.528 22.528S259.4816 996.1472 247.0912 996.1472z" p-id="4672"/><path d="M745.2672 192.1024 174.6944 192.1024c-12.3904 0-22.528-10.0352-22.528-22.528s10.0352-22.528 22.528-22.528l570.5728 0c12.3904 0 22.528 10.0352 22.528 22.528S757.6576 192.1024 745.2672 192.1024z" p-id="4673"/><path d="M437.6576 429.6704 174.6944 429.6704c-12.3904 0-22.528-10.0352-22.528-22.528s10.0352-22.528 22.528-22.528l262.9632 0c12.3904 0 22.528 10.0352 22.528 22.528S450.1504 429.6704 437.6576 429.6704z" p-id="4674"/><path d="M620.6464 310.8864 174.6944 310.8864c-12.3904 0-22.528-10.0352-22.528-22.528s10.0352-22.528 22.528-22.528l445.952 0c12.3904 0 22.528 10.0352 22.528 22.528S633.1392 310.8864 620.6464 310.8864z" p-id="4675"/><path d="M399.6672 1009.8688c-6.2464 0-12.288-2.56-16.5888-7.2704-5.2224-5.7344-7.168-13.7216-5.12-21.2992l40.8576-146.6368c1.024-3.6864 3.072-7.168 5.7344-9.8304l408.9856-408.9856c14.1312-14.0288 36.9664-14.0288 51.0976 0l97.792 97.792c6.8608 6.8608 10.5472 15.872 10.5472 25.4976s-3.7888 18.7392-10.5472 25.4976L928.8704 618.496c-4.1984 4.1984-9.9328 6.5536-15.872 6.5536s-11.6736-2.3552-15.872-6.5536l-66.048-66.048c-8.8064-8.8064-8.8064-23.04 0-31.8464s23.04-8.8064 31.8464 0l50.176 50.176 31.4368-31.4368L859.136 454.0416 460.6976 852.48 431.104 958.6688 546.7136 936.96l231.7312-231.7312c5.0176-5.4272 50.7904-52.6336 107.2128-56.7296 12.3904-0.9216 23.1424 8.3968 24.064 20.7872 0.9216 12.3904-8.3968 23.1424-20.7872 24.064-40.3456 2.9696-77.4144 42.2912-77.824 42.7008-0.2048 0.2048-0.4096 0.512-0.7168 0.7168L573.5424 973.7216c-3.1744 3.1744-7.2704 5.3248-11.776 6.2464l-158.0032 29.5936C402.432 1009.7664 401.1008 1009.8688 399.6672 1009.8688z" p-id="4676"/></svg><span>短文</span></a></li>
                <li><a href="" id="picture"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" t="1524185987668" class="icon" style="margin-top: 19px;width: 22px;height: 22px;" viewBox="0 0 1024 1024" version="1.1" p-id="4115" width="200" height="200"><defs><style type="text/css"/></defs><path d="M288 480c54.4 0 96-41.6 96-96s-41.6-96-96-96-96 41.6-96 96 41.6 96 96 96z m0-128c19.2 0 32 12.8 32 32s-12.8 32-32 32-32-12.8-32-32 12.8-32 32-32z" p-id="4116"/><path d="M864 160h-704c-54.4 0-96 41.6-96 96v512c0 54.4 41.6 96 96 96h704c54.4 0 96-41.6 96-96v-512c0-54.4-41.6-96-96-96z m-736 608v-512c0-19.2 12.8-32 32-32h704c19.2 0 32 12.8 32 32v364.8l-169.6-169.6c-38.4-38.4-99.2-38.4-134.4 0l-348.8 348.8h-83.2c-19.2 0-32-12.8-32-32z m736 32h-531.2l304-304c12.8-12.8 32-12.8 44.8 0l214.4 214.4v57.6c0 19.2-12.8 32-32 32z" p-id="4117"/></svg><span>图片</span></a></li>
                <li><a href=""><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" t="1524186061713" class="icon" style="margin-top: 19px;width: 22px;height: 22px;" viewBox="0 0 1024 1024" version="1.1" p-id="4821" width="200" height="200"><defs><style type="text/css"/></defs><path d="M661.648 118H249.104c-39.088 0-70.304 31.752-70.304 70.304v647.392c0 39.096 31.752 70.304 70.304 70.304h525.8c38.552 0 70.296-31.752 70.296-70.304V301.56L661.648 118z m12.664 74.704l96.176 96.184H684.584c-5.408 0-10.272-4.864-10.272-10.272V192.704z m126.928 642.992a26.24 26.24 0 0 1-26.344 26.352H249.104a26.24 26.24 0 0 1-26.344-26.352V188.304a26.24 26.24 0 0 1 26.344-26.344v-0.464h381.328v117.192c0 29.824 24.416 54.16 54.16 54.16h116.656v502.848z" p-id="4822"/><path d="M348.68 386.072h188.968a21.84 21.84 0 0 0 21.944-21.936 21.84 21.84 0 0 0-21.944-21.944H348.68a21.832 21.832 0 0 0-21.944 21.944 21.84 21.84 0 0 0 21.944 21.936zM674.848 644.8H348.68c-12.208 0-21.944 9.744-21.944 21.944s9.736 21.944 21.944 21.944h326.168c12.208 0 21.944-9.744 21.944-21.944S687.064 644.8 674.848 644.8zM348.68 495.856a21.824 21.824 0 0 0-21.944 21.944 21.832 21.832 0 0 0 21.944 21.936h326.168a21.832 21.832 0 0 0 21.944-21.936 21.832 21.832 0 0 0-21.944-21.944H348.68z" p-id="4823"/></svg><span>文章</span></a></li>
            		<li><a href="" id="entertainment"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" t="1525423123394" class="icon" style="margin-top: 19px;width: 22px;height: 22px;" viewBox="0 0 1024 1024" version="1.1" p-id="953" width="200" height="200"><defs><style type="text/css"/></defs><path d="M328.8 571.3c-3 0-6-1.1-8.3-3.4-4.6-4.6-4.6-11.9 0-16.5l72.6-72.6c4.6-4.6 11.9-4.6 16.5 0s4.6 11.9 0 16.5L337 567.9c-2.2 2.3-5.2 3.4-8.2 3.4zM475.3 529.8c-3 0-6-1.1-8.3-3.4-4.6-4.6-4.6-11.9 0-16.5l42.7-42.7c4.6-4.6 11.9-4.6 16.5 0s4.6 11.9 0 16.5l-42.7 42.7c-2.2 2.3-5.2 3.4-8.2 3.4z" fill="" p-id="954"/><path d="M401.5 571.3c-3 0-6-1.1-8.3-3.4l-72.6-72.6c-4.6-4.6-4.6-11.9 0-16.5s11.9-4.6 16.5 0l72.6 72.6c4.6 4.6 4.6 11.9 0 16.5-2.3 2.3-5.3 3.4-8.2 3.4z" fill="" p-id="955"/><path d="M427.5 804.5c-19 0-42.4-8.2-70.3-32.4-30.9-26.9-56.9-64.6-65.4-77-28.9-42-50.3-84.4-61.8-122.7-13-43.2-13.8-80.9-2.4-112.3 14-38.7 45.5-65.3 93.5-79.1 3.8-2.1 17.3-10.3 33.5-26.5s24.3-29.6 26.5-33.5c13.8-48 40.4-79.4 79.1-93.5 31.3-11.4 69.1-10.5 112.3 2.4 38.2 11.5 80.7 32.9 122.7 61.8 12.4 8.5 50.1 34.5 77 65.4 43.1 49.5 35.4 85.1 21.5 106.2-10.5 15.8-25.2 25.6-45 29.9-16.2 3.5-34.1 3.1-53 2.7-45.8-1.1-97.8-2.3-148.4 50.6-0.1 0.2-0.3 0.3-0.5 0.5-52.8 50.6-51.6 102.6-50.6 148.4 0.4 19 0.8 36.9-2.7 53-4.3 19.8-14.1 34.5-29.9 45-9.5 6.3-21.5 11.1-36.1 11.1zM375.9 376c-22.8 22.8-41.6 32.3-42.4 32.7-0.9 0.4-1.8 0.8-2.7 1-39 10.9-64.1 31.3-74.8 60.7-18 49.6 4.1 125.3 60.7 207.4 8 11.6 32.3 47 60.3 71.3 42.5 37 62.9 23.5 69.6 19 19.5-12.9 19.9-34.7 19.1-72.1-0.6-24.2-1.2-51.7 6-80.8 8.4-34 26-63.4 53.6-90 26.6-27.6 56-45.2 90-53.6 29.1-7.2 56.6-6.6 80.8-6 37.4 0.9 59.2 0.4 72.1-19.1 4.4-6.7 17.9-27.1-19-69.6-24.4-28-59.7-52.3-71.3-60.3-82.2-56.6-157.8-78.7-207.4-60.7-29.4 10.7-49.9 35.9-60.7 74.8-0.3 0.9-0.6 1.8-1 2.7-0.6 1-10.1 19.7-32.9 42.6z m-49.2 19.2z" fill="" p-id="956"/><path d="M488.271012 323.337957a16.2 16.2 0 1 0 22.909859-22.91066 16.2 16.2 0 1 0-22.909859 22.91066Z" fill="" p-id="957"/><path d="M563.161313 398.258543a16.2 16.2 0 1 0 22.90986-22.91066 16.2 16.2 0 1 0-22.90986 22.91066Z" fill="" p-id="958"/><path d="M563.177163 323.352806a16.2 16.2 0 1 0 22.909859-22.910659 16.2 16.2 0 1 0-22.909859 22.910659Z" fill="" p-id="959"/><path d="M488.256283 398.2424a16.2 16.2 0 1 0 22.90986-22.910659 16.2 16.2 0 1 0-22.90986 22.910659Z" fill="" p-id="960"/><path d="M512 977.8c-62.9 0-123.9-12.3-181.3-36.6-55.5-23.5-105.3-57-148-99.8-42.8-42.8-76.3-92.6-99.8-148C58.6 636 46.3 575 46.3 512.1s12.3-123.9 36.6-181.3c23.5-55.5 57-105.3 99.8-148 42.8-42.8 92.6-76.3 148-99.8C388.1 58.7 449.1 46.4 512 46.4c62.9 0 123.9 12.3 181.3 36.6 55.5 23.5 105.3 57 148 99.8 42.8 42.8 76.3 92.6 99.8 148 24.3 57.4 36.6 118.4 36.6 181.3S965.4 636 941.1 693.4c-23.5 55.5-57 105.3-99.8 148-42.8 42.8-92.6 76.3-148 99.8-57.4 24.3-118.4 36.6-181.3 36.6z m0-894.6c-236.5 0-429 192.4-429 429s192.4 429 429 429c236.5 0 429-192.4 429-429s-192.5-429-429-429z" fill="" p-id="961"/></svg><span>娱乐</span></a>
                    <ul class="amuse">
                        <li><a href="http://106.14.116.5/2048/demo.html" target="_blank">2048游戏</a></li>
                        <li><a href="http://106.14.116.5/html5-fruit-ninja/index.html" target="_blank">水果忍者</a></li>
                    </ul>
                </li>	
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
          	<li class="row clearfix">
                <div class="author">
                    <p class="authorId"><%=m.getId()%></p>
                    <span class="displayTime">&lt;<%=m.getDate()+" "+m.getTime()%>&gt;</span>
                </div>
                <div class="text"><%=m.getContent()%></div>
            </li>
        <% } else {%>
   			<li class="img-row">
                <div class="author">
                    <p class="authorId"><%=m.getId()%></p>
                    <span class="displayTime">&lt;<%=m.getDate()+" "+m.getTime()%>&gt;</span>
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
                        <span class="localWeather"></span>
                </div>
                <div class="date_2">
                    <div class="localDate next-date"></div>
                    <span class="localWeather localNextWeather"></span>
                </div>
            </div>
    <div class="extend-read">
    <ul id="mes-1"></ul>
                <ul id="mes-2"></ul>
    </div>

            <!--底部栏部分-->
            <div id="footer" class="pageAbout">
            	<ul class="changeItem">
            <%
				Integer pageCount=(Integer)request.getAttribute("pageCount");
				Integer curPage=(Integer)request.getAttribute("curPage");
				if(pageCount!=null&&curPage!=null){
					if(pageCount!=0&&curPage!=1){
			%>
                
                    <li><a href="listAllMessage?curPage=<%=1%>">top</a></li>
                    <li><a href="listAllMessage?curPage=<%=curPage-1 %>">&lt;&lt;</a></li>
            <%						
				}else{
			%>
					<li><a>top</a></li>	 
					<li><a >&lt;&lt;</a></li>
			<%						
				}	
			%>
			<%
					if(pageCount!=0&&curPage!=pageCount){
			%>
                    <li><a href="listAllMessage?curPage=<%=curPage+1 %>">&gt;&gt;</a></li>
                    <li><a href="listAllMessage?curPage=<%=pageCount%>">end</a></li>
           	<%
					}else{
			%>	
					<li><a>&gt;&gt;</a></li>
					<li><a >end</a></li>
				
			<% 
					}
			%>	
			 	</ul>
                    <span class="changeCal"><%=curPage %>&nbsp;&frasl;&nbsp;<%=pageCount%></span>
             <%
			}
			%>	
                <div id="info">
                    <!--<p>author~老zhang & 雷 · logo设计~路帘青 · 管理员~龙杰君</p>-->
                    <a href="#" class="about">@about</a>
                </div>
            </div>
        </div>
</content>
</body>
</html>