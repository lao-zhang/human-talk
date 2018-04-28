$(function () {
    $(".windowPop").hide();
    function closeCss() {
        $(".close").css({
            "left":60+$(".caption").width(),
            "top":0
        })
    }
    $("#text").click(function (event) {
        event.preventDefault();
        $(".windowPop").fadeIn();
        $(".pop_2").hide();
        $(".pop_1").show();
        closeCss();
    });
    $("#picture").click(function (event) {
        event.preventDefault();
        $(".windowPop").fadeIn();
        $(".pop_1").hide();
        $(".pop_2").show();
        closeCss();
    });
    //显示图片
    $("#file").change(function () {
        var that=this;
        var fileArr=this.value.toLowerCase().split(".");
        var suffix=fileArr[fileArr.length-1];
        if(suffix==='gif'||suffix==='jpg'||suffix==='bmp'||suffix==='png'||suffix==='jpeg'){
            $(".remindText").text("");
            var file=this.files[0];
            if(file){
                var reader=new FileReader();
                reader.onload=function () {
                    $(".img").attr("src",this.result)
                };
                reader.readAsDataURL(file);
            }}
        else {
            $(".uploadImg").attr("disabled",true);
        $(".remindText").text("请选择图片");
        this.value = ""
            }
    });

    $(".windowPop").click(function (event) {
        if(event.target.id==="windowPop"){
            $(".windowPop").hide();
        }
    });
    $(".close").click(function () {
        $(".windowPop").hide();
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