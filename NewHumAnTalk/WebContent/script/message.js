//ajax获取数据
var requestUrl = "https://news-at.zhihu.com/api/4/news/latest";
//这里一定要注意，实际请求的url其实是以参数形式从eezzo.com读取的，因此我们都要对url进行编码，使用encodeURI方法即可
$.getJSON("http://eezzo.com/API/CD", { url: encodeURI(requestUrl) }, function(json) {
    for(var i=0;i<json.stories.length;i++){
        var ele=$("<li></li>");
        var link=$("<a></a>");
        link.text(json.stories[i].title);
        link.attr('href',"https://news-at.zhihu.com/story/"+json.stories[i].id).attr("target","_blank").addClass("changeColor");
        link.appendTo(ele);
        var mes=$("#mes-1");
        ele.css({"border-bottom":"thin solid #987cb9",
        "padding":"3px 0 3px 0"	
        });
        mes.append(ele);
        $("#mes-2").html(mes.clone());
    }
});

$(function () {
    //右边固定
    $(".aside").css("left",$("#middle").offset().left+640);
    $(window).resize(function () {
        $(".aside").css("left",$("#middle").offset().left+640-$(window).scrollLeft());
    }).scroll(function () {
        $(".aside").css("left",$("#middle").offset().left+640-$(window).scrollLeft());
    });
    //回到顶部
var getTop = document.getElementById("goTop");
$(window).scroll(function () {
    var currentPosition = document.documentElement.scrollTop||document.body.scrollTop;
    if($(window).scrollTop()>200){
        getTop.style.display='block';
    }
    else{
        getTop.style.display='none';
    }
getTop.onclick=function(){
    var timer=setInterval(
    function(){
        if (currentPosition > 1) {
            currentPosition -=currentPosition/30 ;
        }
        if (currentPosition <=1){
            currentPosition=0;
            clearInterval(timer);
            timer = null;
        }
        window.scrollTo(0, currentPosition);
    },1);
}});

//获取天气
    var cityUrl="http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js";
    $.getScript(cityUrl,function(){
        var city = remote_ip_info["province"]+"省 "+remote_ip_info["city"]+"市"; // 获取城市
        $.ajax({
            url:"http://api.map.baidu.com/telematics/v3/weather?location=" + city + "&output=json&ak=EGgzZ22dsboWQEcPQ6KDQLknQd3YkkkP",
            type:"get",
            dataType:"jsonp",
            scriptCharset:"gbk",
            success:function(baiduTQ){
                try{
                    if(baiduTQ===null||baiduTQ.error!==0||baiduTQ.status!=="success"||baiduTQ.results.count===0){
                        $(".localWeather").html("--");
                        $(".localDate").html("--");
                    }
                    if(baiduTQ.results[0].weather_data.length>0){
                        //当天的天气
                            var data_1=baiduTQ.results[0].weather_data[0];
                        $(".ipAddress").html(city+"——"+data_1.weather);
                        $(".localDate").html(data_1.date);
                        var split_1=data_1.temperature.split("~");
                        split_1[0]="~"+split_1[0]+split_1[1].charAt(split_1[1].length-1);
                        $(".localWeather").html(data_1.wind+split_1.reverse().join(""));
                        //第二天的天气
                        var data_2=baiduTQ.results[0].weather_data[1];
                        $(".next-date").html(data_2.date+" "+data_2.weather);
                        var split_2=data_2.temperature.split("~");
                        split_2[0]="~"+split_2[0]+split_2[1].charAt(split_2[1].length-1);
                        $(".localNextWeather").html(data_2.wind+split_2.reverse().join(""));
                    }
                }
                catch(err){
                    alert(err);
                }
            }
        })
    });

    //内容推荐
    //滚动页面
        var area=$(".extend-read")[0];
        var mes1=$("#mes-1");
        var mes2=$("#mes-2");
        function scrollTop() {
            if(area.scrollTop>=mes1.height()){
                area.scrollTop=0;
            }else{
                area.scrollTop++;
            }
        }
        var myTimer=setInterval(scrollTop,40);
        area.onmouseenter=function () {
            clearInterval(myTimer);
        };
        area.onmouseleave=function () {
            myTimer=setInterval(scrollTop,40);
        };
});

