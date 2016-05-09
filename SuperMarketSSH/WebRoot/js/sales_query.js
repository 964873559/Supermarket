function cleanTable(){
    $("#tableBottom").empty();
    $("#_1").html("0");
    $("#_2").html("0");
    $("#_3").html("0");
}
function showFromDay(){
    //alert(123);
    //
        var _date = $("#_date").val();
        var _id = $("#_id").val();
        var _name = $("#_name").val();
        $.post("sales_query1.php",{date1:_date, id1:_id, name1:_name},function(data){
                    $("#tableBottom").empty();
                    $("#tableBottom").append(data);
                }); 
}

function showFromId(_value){
    if(_value == ""){
        cleanTable();    
    }
    else{
        var _date = $("#_date").val();
        var _id = _value;
        var _name = $("#_name").val();
        $.post("sales_query1.php",{date1:_date, id1:_id, name1:_name},function(data){
                    $("#tableBottom").empty();
                    $("#tableBottom").append(data);
                }); 
    }
}

function showFromName(_value){
    if(_value == ""){
        cleanTable();
    }
    else{
        var _date = $("#_date").val();
        var _name = _value;
        var _id = $("#_id").val();
        $.post("sales_query1.php",{date1:_date, id1:_id, name1:_name},function(data){
                    $("#tableBottom").empty();
                    $("#tableBottom").append(data);
                });
    }
}

function count(){
    var x = $("#tableBottom").children();
    var iPrice = 0;
    var sPrice = 0;
    var aPrice = 0;
    x.each(function(){
//                alert($(this).children().first().text() );
                var xid = $(this).children().first().text();
                var xnum = parseInt($(this).children().first().next().next().next().text());
                var xinprice = parseInt($(this).children().last().text());
                var xoutprice = parseInt($(this).children().first().next().next().text());
                iPrice += xnum * xinprice;
                sPrice += xnum * xoutprice;
                aPrice += xnum * (xoutprice - xinprice);
            });
    $("#_1").html(iPrice);
    $("#_2").html(sPrice);
    $("#_3").html(aPrice);
}
