$(document).ready(function () {
    $(".remove").click(remove);
    $(".selectpicker").change(changeQty);
})


function remove(){
    $.get('cart',{action:"remove",id:this.value},function (products)
        {
            processData(products);
        }
    )
}

function changeQty(){
    $.get('cart',{action:"changeQty", id:this.id , qty:this.value},function (products)
        {
            processData(products);
        }
    )

}

function processData(data){
    data = JSON.parse(data);
    $("#cart-table").find("tr:gt(0)").remove();
    var total = 0.0;
    for(var i=0;i<data.length;i++)
    {
        total += data[i].product.price * data[i].quantity;
        var qty = $('<select>', {
            id: data[i].product.id,
            class:"selectpicker",
            value : data[i].quantity,
            click: function () {
                var qtyy =$(this).val();
                var idd =$(this).attr("id");
                $.get('cart',{action:"changeQty", id:idd , qty:qtyy},function (products)
                    {
                        processData(products);
                    }
                )
            }
        })
            .append('<option value="'+ data[i].quantity +'">'+data[i].quantity+'</option>')
            .append('<option value="1">1</option>')
            .append('<option value="2">2</option>')
            .append('<option value="3">3</option>')
            .append('<option value="4">4</option>')
            .append('<option value="5">5</option>')
        var td0=$('<td>').append('<img src="resources/images/'+data[i].product.photo +'" width="120" />');
        var td1 = $('<td>').text(data[i].product.name);
        var td2 = $('<td>').text((data[i].product.price).toFixed(1));
        var td3 = $('<td>').append(qty);

        var rmvbtn=$('<button/>', {
                text : "Remove",
                class:"remove",
                icons: {
                    primary: ".fa fa-trash"
                },
                value:data[i].product.id,
                click: function () {
                    var value=$(this).attr("value");
                    $.get('cart',{action:"remove",id:value},function (products)
                        {
                            processData(products);
                        }
                    )

                }
            }
        );
        var td4 = $('<td>').append(rmvbtn);
        var td5 = $('<td>').text((data[i].product.price * data[i].quantity).toFixed(1));
        var tr = $('<tr>').append(td0).append(td1).append(td2).append(td3).append(td4).append(td5);
        $('#cart-table').append(tr);
    }
    var ttd1 = $('<td colspan="5" align="right">').text("Total");
    var ttd2 = $('<td>').text(total.toFixed(1));
    var tr2 = $('<tr>').append(ttd1).append(ttd2);
    $('#cart-table').append(tr2);
}


