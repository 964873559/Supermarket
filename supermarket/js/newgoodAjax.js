$(document).ready(function(){
            $("input#submit").click(function(){
                    if($("#id").val()=="" || $("#name").val()=="" || $("#inPrice").val()=="" || $("#salePrice").val()=="" || $("#inNum").val()==""){
                        alert("信息不完整123");
                    }
                    else{
                        $.post("luru.php",{
                            id: $("#id").val(),
                            name: $("#name").val(),
                            inPrice: $("#inPrice").val(),
                            salePrice: $("#salePrice").val(),
                            inNum: $("#inNum").val()
                        }/*,function(data){
                            alert("123");
                            $("#newgood").html("123");
                        },"html"
                        */
                        );
                        var time = new Date().Format("yyyy-MM-dd hh:mm:ss");
                        $("#goodTable").append("<tr><td>"+ $("#id").val() +"</td><td>"+ $("#name").val() +"</td><td>"+ $("#inPrice").val() +"</td><td>"+ $("#salePrice").val() +"</td><td>"+ $("#inNum").val() +"</td><td>"+ time +"</td></tr>");
                    }
                });
        });




//时间格式化
Date.prototype.Format = function(fmt) 
{ //author: meizz 
      var o = { 
              "M+" : this.getMonth()+1,                 //月份 
                  "d+" : this.getDate(),                    //日 
                      "h+" : this.getHours(),                   //小时 
                          "m+" : this.getMinutes(),                 //分 
                              "s+" : this.getSeconds(),                 //秒 
                                  "q+" : Math.floor((this.getMonth()+3)/3), //季度 
                                      "S"  : this.getMilliseconds()             //毫秒 
                                            }; 
        if(/(y+)/.test(fmt)) 
                fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length)); 
          for(var k in o) 
                  if(new RegExp("("+ k +")").test(fmt)) 
                        fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length))); 
            return fmt; 
}



