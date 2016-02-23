$(document).ready(function(){
            $.post("show.php",function(result){
                    $("#showframe").html(result);
                    onload();//来自page.js的函数
                });
        });

function welcome(username){
    $("#spanWelcome").html("欢迎您！" + username);
}
