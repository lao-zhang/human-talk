$(function () {
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
        if (currentPosition > 5) {
            currentPosition -=currentPosition/10 ;
        }
        if (currentPosition <=5){
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
                        $(".ipAddress").html(city);
                        $(".localDate").html(data_1.date+" "+data_1.weather);
                        var split_1=data_1.temperature.split("~");
                        split_1[0]="~"+split_1[0]+split_1[1].charAt(split_1[1].length-1);
                        $(".localWeather").html(data_1.wind+split_1.reverse().join(""));
                            $(".weatherImg").attr("src",data_1.dayPictureUrl);
                        //第二天的天气
                        var data_2=baiduTQ.results[0].weather_data[1];
                        $(".next-date").html(data_2.date+" "+data_2.weather);
                        var split_2=data_2.temperature.split("~");
                        split_2[0]="~"+split_2[0]+split_2[1].charAt(split_2[1].length-1);
                        $(".localNextWeather").html(data_2.wind+split_2.reverse().join(""));
                        $(".nextWeatherImg").attr("src",data_2.dayPictureUrl);
                    }
                }
                catch(err){
                    alert(err);
                }
            }
        })
    })
});

