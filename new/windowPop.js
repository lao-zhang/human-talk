$(function () {
    var windowPop=$("#windowPop");
    windowPop.hide();
    $("#text").click(function (event) {
        windowPop.fadeIn();
        event=event||window.event;
        event.preventDefault();
        $(".close").css({
            "left":60+$("#caption").width(),
            "top":0
        })
    });
    windowPop.click(function (event) {
        if(event.target.id==="windowPop"){
            windowPop.hide();
        }
    });
    $(".close").click(function () {
        $("#windowPop").hide();
    });
    //计算剩余
    $(".count").hide();
    function count(e) {
        $(".count").show();
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
$("#simplyText").keydown(function () {
    count(this);
}).keyup(function () {
    count(this);
});
});