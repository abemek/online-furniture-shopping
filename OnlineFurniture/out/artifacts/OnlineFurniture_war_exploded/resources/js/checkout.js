
window.onload = pageload;
function pageload(ev) {
    $("#confirmtbtn").hide();
    var coll = document.getElementsByClassName("collapsible");
    var i;

    for (i = 0; i < coll.length; i++) {
        coll[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var content = this.nextElementSibling;
            if (content.style.display === "block") {
                content.style.display = "none";
            } else {
                content.style.display = "block";
            }
        });
    }

    $(confirmtbtn).click(function(){
            location.href = "index.jsp";
        }
    );



    $('#btn_add').click(  function (){
        $.ajax({
            url: 'checkout?action=viewProduct',
            data : {
                username : 'zena'
            },
            error: function() {
                alert('An error has occurred');
            },
            dataType: 'json',
            success: function(data) {
                data.forEach(function (arrayItem) {
                    var x = arrayItem.product.price;
                    //console.log(x);
                    alert('my data '+x+"----"+arrayItem.quantity);
                    // document.getElementById("reponse").innerHTML=x;


                    /*          var td0=$('<td>').append('<img src="resources/images/'+arrayItem.product.photo +'" width="120" />');
                                var td1 = $('<td>').text(arrayItem.product.name);
                                var td2 = $('<td>').text(arrayItem.product.price);
                                var tr = $('<tr>').append(td0).append(td1).append(td2);
                                   $('#tbl_products>tbody').append(x);


    */


                });


            },
            type: 'GET'
        });


    });



    $('#checkoutbtn').click(  function (){

        //var creditcard= $('#creditcard').val();

        //alert("Credit card "+creditname)

        var creditname=$('#cardName').val();
        var creditcard= $('#creditcard').val();

        var creditInfo={name:creditname,card:creditcard};

        $('.require').each(function (i, el) {
            var data = $(el).val();

            var len = data.length;
            if (len < 1) {
                alert("Please fill in all required information");
                event.preventDefault();
                return;
            }else{
                $.ajax({
                    url: '/checkout',
                    data : {
                        info: JSON.stringify(creditInfo)

                    },
                    error: function() {
                        alert('An error has occurred');
                    },
                    dataType: 'json',
                    success: function(data) {

                        if(data.status.substr(0,2)=='ok'){
                            alert('Please click on confirm, to debit $ '+data.status.substr(2,data.status.length-1)+' on your account.Thanks for purchasing for us');
                            response.sendRedirect("product/index.jsp");
                        }else{
                            alert('There must be something wrong with your card');
                        }
                    },
                    type: 'POST'
                });


                $("#confirmtbtn").show();
            }
        });

    });

};

