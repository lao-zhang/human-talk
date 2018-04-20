$(function () {
var getTop = document.getElementById("goTop");
$(".goTop").
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
            currentPosition =currentPosition-5;
        }
        if (currentPosition <=5){
            currentPosition=0;
            clearInterval(timer);
            timer = null;
        }
        window.scrollTo(0, currentPosition);
    },1);
}});
});