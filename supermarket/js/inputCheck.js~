function inputCheck(loginForm){
    if(loginForm.id.value == "" || loginForm.name.value == "" || loginForm.inPrice.value == "" || loginForm.salePrice.value == "" || loginForm.inNum.value == ""){
        alert("信息不完整！");
        return(false);
    }
    else{
        /*
        var time = new Date().Format("yyyy-MM-dd hh:mm:ss");
        addInfo(loginForm.id.value, loginForm.name.value, loginForm.inPrice.value, loginForm.salePrice.value, loginForm.inNum.value, time);
        */
        alert("信息无误");
        return(true);
    }
}


function addInfo(id,name,inPrice,salePrice,inNum,inTime){
    var str = "<tr><td>"+id+"</td><td>"+name+"</td><td>"+inPrice+"</td><td>"+salePrice+"</td><td>"+inNum+"</td><td>"+inTime+"</td></tr>";
    $("#goodTable").append(str);

}
























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
