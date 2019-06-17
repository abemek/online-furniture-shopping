<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,500i,700,800i" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/home-header-footer.css">

    <title>Online Furniture Shopping</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="resources/js/home.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>

    <style>
        .my_div {
            position: absolute;
            right: 10px;
            top: 60px;
            background-color: whitesmoke;
            width: 350px;
            padding: 10px;
            color: black;
            border: gainsboro 2px  solid;
            display: none;
            overflow: auto;
        }
        #minicart-quantity
        {
            position: relative;
        }

        #sub1 img
        {
            float: left;
        }

        .theImg
        {
            width: 100px;
            height: 100px;
            /*float: left;*/
            display: block;
        }
        p{
            margin: 0px;
        }
        #newDiv1
        {
            overflow: auto;
        }
    </style>

    <script>
function setVisibility(id, visibility) {
document.getElementById(id).style.display = visibility;
}
</script>

    <script>
        $(document).ready(function () {
            document.getElementById("minicart-quantity").innerHTML="${sessionScope.count}";
            $(".button").click(
                function () {

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
                        }
                    )
                }
            )
        })



    </script>



    <input type="text" name="pONumb" value="${sessionScope.count}" />
</head>
<body>
<nav class="navbar navbar-expand-sm fixed-top  navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item">
                <a class="nav-link" href="#">HOME <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown dmenu">
                <a class="nav-link" href="#">MATTRESS</a>
                <div class="dropdown-menu sm-menu">
                    <a class="dropdown-item" href="#">All Mattress</a>
                    <a class="dropdown-item" href="#">Adjustable Bases and Frames</a>
                    <a class="dropdown-item" href="#">Sleep Accessories</a>
                </div>
            </li>
            <li class="nav-item dropdown dmenu">
                <a class="nav-link" href="#" >
                    LIVINGROOMS
                </a>
                <div class="dropdown-menu sm-menu">
                    <a class="dropdown-item" href="<c:url value="${pageContext.request.contextPath }/products">
                    <c:param name="type" value="Sofa"/>
                    </c:url>">
                        Sofa</a>
                    <a class="dropdown-item" href="<c:url value="${pageContext.request.contextPath }/products">
                    <c:param name="type" value="Couch"/>
                    </c:url>">
                    Couch</a>

                    <a class="dropdown-item" href="<c:url value="${pageContext.request.contextPath }/products">
                    <c:param name="type" value="Loveseat"/>
                    </c:url>">
                        LoveSeat</a>
                </div>
            </li>


            <li class="nav-item dropdown dmenu">
                <a class="nav-link" href="#" >
                    BEDROOMS
                </a>
                <div class="dropdown-menu sm-menu">
<%--                    <a class="dropdown-item" href="#">Beds</a>--%>

                    <a class="dropdown-item" href="<c:url value="${pageContext.request.contextPath }/products">
                    <c:param name="type" value="Bed"/>
                    </c:url>">
                        Beds</a>
                    <a class="dropdown-item" href="#">Dressers/Armoires</a>
                    <a class="dropdown-item" href="#">Linens</a>
                    <a class="dropdown-item" href="#">Kids Bed</a>
                </div>
            </li>

            <li class="nav-item dropdown dmenu">
                <a class="nav-link" href="#" >
                    DINING
                </a>
                <div class="dropdown-menu sm-menu">
                    <a class="dropdown-item" href="#">Dining Sets</a>
                    <a class="dropdown-item" href="#">Tables</a>
                    <a class="dropdown-item" href="#">Chairs & Stools</a>
                    <a class="dropdown-item" href="#">Sideboards & Buffets</a>
                </div>
            </li>



            <li class="nav-item">
                <a class="nav-link" href="#">CONTACT US</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">CALL</a>
            </li>

        </ul>
        <div class="social-part">
            <i class="fa fa-shopping-cart" onMouseOver="setVisibility('sub1', 'inline');"> <span id="minicart-quantity" onMouseOver="setVisibility('sub1', 'inline');" ></span></i>
            <a class="nav-link" href="/logout">LOGOUT</a>
        </div>
    </div>
</nav>



<br><br>
<% String userName=(String)session.getAttribute("usersession");%>
<div id="divcard">
    <c:forEach var="product" items="${products }">
        <div class="card">
            <img src="${pageContext.request.contextPath }resources/images/${product.photo }" >
            <hr>
            <div class="container">
                <h4><b>${product.name}</b></h4>
                <p>$${product.price}</p>

                <% String muser=(String)session.getAttribute("usersession");%>
                <c:set var="logged" value="<%=muser%>"/>

                <button class="button"
                        <c:if test="${logged == null}">
                            <c:out value="disabled"/>
                        </c:if>
                    onclick="window.location.href='<c:url value="${pageContext.request.contextPath }/cart"><c:param name="action" value="buy"/><c:param name="id" value="${product.id }"/></c:url>'">
                <button class="button" id="addCart" value="${product.id }">
<%--                   onclick="window.location.href='<c:url value="${pageContext.request.contextPath }/cart"><c:param name="action" value="buy"/><c:param name="id" value="${product.id }"/></c:url>',test()">--%>
                    Add To Cart
                </button>
            </div>
        </div>
        </c:forEach>





    <div id="sub1" class=my_div onMouseOut="setVisibility('sub1','none');" onMouseOver="setVisibility('sub1', 'inline');">
<div id="cart"></div>
<%--            <c:set var="total" value="0"></c:set>--%>
<%--            <c:forEach var="item" items="${sessionScope.cart }">--%>
<%--                <c:set var="total" value="${total + item.product.price * item.quantity }"></c:set>--%>
<%--                <div id="viewcart">--%>
<%--                <img src="${pageContext.request.contextPath }resources/images/${item.product.photo }" width="120">--%>
<%--                    <br>--%>
<%--                ${item.product.name }<br>--%>
<%--                QTY: ${item.quantity }<br>--%>
<%--                PRICE: ${item.product.price }--%>

<%--                    <br>--%>
<%--                    <br>--%>
<%--                <hr>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>

    <button class="button"
            onclick="window.location.href='<c:url value="${pageContext.request.contextPath }/cart"><c:param name="action" value="view"/><c:param name="id" value="${product.id }"/></c:url>'">
        View Cart
    </button>
    </div>

</div>
<input type="text" id="pONumb" />
<div id="counter"></div>
</body>
</html>
