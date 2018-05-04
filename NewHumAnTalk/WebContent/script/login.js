document.onkeydown=function (ev) {
    var ev=window.event||ev;
    if(ev.keyCode===13){
        document.getElementsByClassName("btn").click();
    }
};
var code=null;
function createCode(){
    //首先默认code为空字符串
    code = '';
    //设置长度，这里看需求，我这里设置了4
    var codeLength = 4;
    var codeV = document.getElementById('code');
    //设置随机字符
    var random = [0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R', 'S','T','U','V','W','X','Y','Z'];
    //循环codeLength 我设置的4就是循环4次
    for(var i = 0; i < codeLength; i++){
        //设置随机数范围,这设置为0 ~ 36
        var index = Math.floor(Math.random()*36);
        //字符串拼接 将每次随机的字符 进行拼接
        code += random[index];
    }
    //将拼接好的字符串赋值给展示的Value
    codeV.value = code;
}

//下面就是判断是否== 的代码，无需解释
function validate(){
    var oValue = document.getElementById('input').value.toUpperCase();
    if(oValue.length==0||oValue==null){
        alert('请输入验证码');
        return false;
    }else if(oValue !== code){
        alert('验证码不正确，请重新输入');
        createCode();
        return false;
    }else{
        return true;
    }
}
//设置此处的原因是每次进入界面展示一个随机的验证码，不设置则为空
window.onload = function (){
    createCode();
}

//设置cookie
function setCookie(cname,cvalue,exdays){
    var d=new Date();
    d.setTime(d.getTime()+(exdays*24*60*60*1000));
    var expires="expires="+d.toGMTString();
    document.cookie=cname+"="+cvalue+"; "+expires;
}
function getCookie(cname){
    var name=cname+"=";
    var ca=document.cookie.split(";");
    for(var i=0;i<ca.length;i++){
        var c=ca[i].trim();
        if(c.indexOf(name)==0){
            return c.substring(name.length,c.length);
        }
    }
    return "";
}
function checkCookie(){
    var user=getCookie("username");
    if(user!=""){
    	document.getElementById("inputEmail3").value=user;
    }
    else{
        user=document.getElementById("inputEmail3").value;
        if(user!=""||user!=null){
            setCookie("username",user,10);
        }
    }
}
function go() {
    var user=document.getElementById("inputEmail3").value;
    if(user==""||user==null){
        alert("请输入用户名");
        return false;
    }
    else{
        return validate();
    }
    if(document.getElementById("checkbox1").checked){
        checkCookie();
    }
}
$(document).ready(function(){
	checkCookie();
})