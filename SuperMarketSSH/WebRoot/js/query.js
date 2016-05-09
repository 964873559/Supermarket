function showfromid(_value){
//    alert("id= " + _value);
    if(_value == ""){
        $("#appendGood").empty();
    }
    else{
        $.post("query.php",{ type1:"id", value1:_value },function(data){
           $("#appendGood").empty();
           $("#appendGood").append(data);
           onload();
           }); 
    }
}

function showfromname(_value){
//    alert("name=" + _value);
    if(_value == ""){
        $("#appendGood").empty();
    }
    else{
    
   $.post("query.php",{ type1:"name", value1:_value },function(data){
           $("#appendGood").empty();
           $("#appendGood").append(data);
           onload();
           });
    }
}
