function showfromid(_value){
    if(_value != ""){
        $.post("showOfSales.php",{type1:"id", value1:_value  },function(data){
                    $("#goodBodyTable").empty();
                    $("#goodBodyTable").append(data);
                });
    }
    else{
        $("#goodBodyTable").empty();
    }
}

function showfromname(_value){
    if(_value != ""){
        $.post("showOfSales.php",{type1:"name", value1:_value  },function(data){
                    $("#goodBodyTable").empty();
                    $("#goodBodyTable").append(data);
                });
    }
    else{
        $("#goodBodyTable").empty();
    }
}




function leftClick(_element){
    //alert($(_element).next().val());
    //左边的加号添加商品，获得商品属性（名称，数量，总价），添加到购物车，计算总金额
    var _addNum = $(_element).next().val();
    if(_addNum > 0){
    var _id = $(_element).parent().parent().prev().prev().prev().prev().text();
    var _name = $(_element).parent().parent().prev().prev().prev().text();
    var _salePrice = $(_element).parent().parent().prev().prev().text();
    var _num = $(_element).parent().parent().prev().text();
    var _thePrice = _salePrice * _addNum;
    if(_addNum > _num){
        alert('error');
    }
    else{
        $("#tableBodyTable").append("<tr class='_forSale'><td class='_name'>"+_name+"</td><td>"+_addNum+"</td><td class='_price'>"+_thePrice+"</td></tr>");
        var priceArray = $("._price").toArray();
        var pr = 0;
        for(i=0;i<priceArray.length;i++){
            pr += parseInt(priceArray[i].innerHTML);
//          alert(priceArray[i].innerHTML);
        }
        $("#allPrice").html(pr);
    }
    }
}

function rightClick(_element){
    var _name = $(_element).parent().parent().prev().prev().prev().text();
    var nameArray = $("._name").toArray();
    for(i=0;i<nameArray.length;i++){
        if(nameArray[i].innerHTML == _name)
            break;
    }
    var _first = $("._name").first().parent();
    for(j=0;j<i;j++) _first = _first.next();
    _first.remove();

    var priceArray = $("._price").toArray();
    var pr = 0;
    for(i=0;i<priceArray.length;i++){
        pr += parseInt(priceArray[i].innerHTML);
    }
    $("#allPrice").html(pr);


}

function saleAll(){
    //通过名称查找到要销售的商品，从数据库获取商品信息，在sale表中增加销售记录，在data表中修改商品库存和获利。
    $("._forSale").each(function(){
                saleIt($(this));
            });
}

function saleIt(_good){
    var _name = _good.children().first().text();
    var _num = _good.children().first().next().text();
    var _price = _good.children().first().next().next().text();
    $.post("saleIt.php",{_1name:_name, _1num:_num, _1price:_price},function(data){
                alert("出售成功！");
                $("#tableBodyTable").empty();

            });
    //alert(_num);


}


