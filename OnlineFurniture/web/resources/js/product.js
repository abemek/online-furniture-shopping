$(function(){
    function setVisibility(id, visibility) {
        document.getElementById(id).style.display = visibility;
    }
    $.get('cart',{action:"buy",id:this.value},function (jsonString)
    {
        $("#minicart-quantity").text(jsonString.length);
        $('#cart').empty();
        $('#cart').append(
            $('<div/>')
                .attr("id", "newDiv1")
                .addClass("newDiv purple bloated")

        );
        for(var i=0;i<jsonString.length;i++)
        {
            $('#newDiv1').append('<img class="theImg" src="resources/images/'+jsonString[i].product.photo +'" />');
            $('#newDiv1').append('<p>'+jsonString[i].product.name+'</P>');
            $('#newDiv1').append('<p>'+"QTY: "+jsonString[i].quantity+'</P>');
            $('#newDiv1').append('<p>'+"PRICE: "+jsonString[i].product.price+'</P>');
            $('#newDiv1').append('<br>');
            $('#newDiv1').append('<hr>');
        }
    })

    $(".button").click(
        function () {
            var status=document.getElementById('status').value
            if(status!='null') {
                $.get('cart', {action: "buy", id: this.value}, function (jsonString) {
                        $("#minicart-quantity").text(jsonString.length);
                        $('#cart').empty();
                        $('#cart').append(
                            $('<div/>')
                                .attr("id", "newDiv1")
                                .addClass("newDiv purple bloated")
                        );
                        for (var i = 0; i < jsonString.length; i++) {
                            $('#newDiv1').append('<img class="theImg" src="resources/images/' + jsonString[i].product.photo + '" />');
                            $('#newDiv1').append('<p>' + jsonString[i].product.name + '</P>');
                            $('#newDiv1').append('<p>' + "QTY: " + jsonString[i].quantity + '</P>');
                            $('#newDiv1').append('<p>' + "PRICE: " + jsonString[i].product.price + '</P>');
                            $('#newDiv1').append('<br>');
                            $('#newDiv1').append('<hr>');
                        }
                    }
                )
            }else{
                alert("You have to login first")
            }
        }
    )
})

