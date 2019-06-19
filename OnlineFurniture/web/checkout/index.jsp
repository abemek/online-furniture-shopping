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
    <link rel="stylesheet" href="resources/css/checkout.css">
    <link rel="stylesheet" href="resources/css/div.css">
    <title>View Cart</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="resources/js/home.js"></script>
    <script src="resources/js/product.js"></script>
    <script src="resources/js/checkout.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
    <script src="resources/js/product.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>

    <script>
        function setVisibility(id, visibility) {
            document.getElementById(id).style.display = visibility;
        }
    </script>

</head>

<body>
<nav class="navbar navbar-expand-sm fixed-top  navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item">
                <a class="nav-link" href="/home">HOME <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown dmenu">
                <a class="nav-link" href="#">MATTRESS</a>
                <div class="dropdown-menu sm-menu">
                    <a class="dropdown-item" href="<c:url value="${pageContext.request.contextPath }/products">
                    <c:param name="type" value="mattress"/>
                    </c:url>">
                        All Mattress</a>
                    <a class="dropdown-item" href="<c:url value="${pageContext.request.contextPath }/products">
                    <c:param name="type" value="amattress"/>
                    </c:url>">
                        Adjustable Bases and Frames</a>
                    <a class="dropdown-item" href="<c:url value="${pageContext.request.contextPath }/products">
                    <c:param name="type" value="Sofa"/>
                    </c:url>">
                        Sleep Accessories</a>
                </div>
            </li>
            <li class="nav-item dropdown dmenu">
                <a class="nav-link" href="#" id="navbardrop">
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
                <a class="nav-link" href="#">
                    BEDROOMS
                </a>
                <div class="dropdown-menu sm-menu">

                    <a class="dropdown-item" href="<c:url value="${pageContext.request.contextPath }/products">
                    <c:param name="type" value="Bed"/>
                    </c:url>">
                        Beds</a>

                    <a class="dropdown-item" href="<c:url value="${pageContext.request.contextPath }/products">
                    <c:param name="type" value="dresser"/>
                    </c:url>">
                        Dressers/Armoires</a>

                    <a class="dropdown-item" href="<c:url value="${pageContext.request.contextPath }/products">
                    <c:param name="type" value="linen"/>
                    </c:url>">
                        Linens</a>

                    <a class="dropdown-item" href="<c:url value="${pageContext.request.contextPath }/products">
                    <c:param name="type" value="kidsbed"/>
                    </c:url>">
                        Kids Bed</a>
                </div>
            </li>

            <li class="nav-item dropdown dmenu">
                <a class="nav-link" href="#">
                    DINING
                </a>
                <div class="dropdown-menu sm-menu">
                    <a class="dropdown-item" href="<c:url value="${pageContext.request.contextPath }/products">
                    <c:param name="type" value="dining"/>
                    </c:url>">
                        Dining Sets</a>
                    <a class="dropdown-item" href="<c:url value="${pageContext.request.contextPath }/products">
                    <c:param name="type" value="table"/>
                    </c:url>">
                        Tables</a>
                    <%--          <a class="dropdown-item" href="<c:url value="${pageContext.request.contextPath }/products">--%>
                    <%--                    <c:param name="type" value="chairs"/>--%>
                    <%--                    </c:url>">--%>
                    <%--            Chairs & Stools</a>         --%>
                    <a class="dropdown-item" href="<c:url value="${pageContext.request.contextPath }/products">
                    <c:param name="type" value="sideboard"/>
                    </c:url>">
                        Sideboards & Buffets</a>
                </div>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="#">CONTACT US</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">CALL</a>
            </li>
        </ul>
        <% String muser=(String)session.getAttribute("usersession");%>
        <c:set var="logged" value="<%=muser%>"/>
        <input type="hidden" value="<%=muser%>"  id="status"/>
        <div class="social-part">
            <c:choose>
                <c:when test="${logged==null}"> <a class="nav-link" id="mlogin" href="/login">LOGIN</a></c:when>
                <c:when test="${logged!=null}"> <a class="nav-link"  href="/logout">LOGOUT</a></c:when>
            </c:choose>
        </div>
        <div class="social-part">
            <i class="fa fa-shopping-cart"><span id="minicart-quantity" onMouseOver="setVisibility('sub1', 'inline');" ></span> </i>

        </div>
    </div>
</nav>
<div id="checkoutContainer">


    <div id="photo">
    <img src="resources/images/payment-image.png">
    </div>
    <h3>Please provide below information</h3>
<div class="container">



        <button class="collapsible">Shipping Address</button>
        <div class="content">
        <label for="Shippingfname">First Name</label>
        <input type="text" id="Shippingfname" name="Shippingfirstname" placeholder="First name.." class="require" />

        <label for="Shippinglname">Last Name</label>
        <input type="text" id="Shippinglname" name="Shippinglastname" placeholder="last name.." required />

        <label for="Shippingcountry">Country</label>
        <input type="text" id="Shippingcountry" name="Shippingcountry" placeholder="country.." />

        <label for="Shippingstate">State</label>
        <input type="text" id="Shippingstate" name="Shippingstate" placeholder="state.." />
        <label for="Shippingcity">City</label>
        <input type="text" id="Shippingcity" name="Shippingcity" placeholder="city.." />
        <label for="Shippingpost">Post Code</label>
        <input type="text" id="Shippingpost" name="Shippingpost" placeholder="postCode.." />

        <label for="Shippingaddress">Address Line</label>
        <input type="text" id="Shippingaddress" name="post" placeholder="Address.." />
            <label for="Shippingsecurity">Do we need a security code to access the bulding?</label>
            <input type="text" id="Shippingsecurity" name="security" placeholder="Security code.." />
            <label for="deliveryInfo">Add delivery Information</label>
            <textarea cols="2" rows="3" id="deliveryInfo" name="post" placeholder="Additional delivery information.." ></textarea>
        </div>

        <button class="collapsible">Billing Address</button>
        <div class="content">
            <label for="billingfname">First Name</label>
            <input type="text" id="billingfname" name="billingfirstname" placeholder="Your name.." />

            <label for="billinglname">Last Name</label>
            <input type="text" id="billinglname" name="billinglastname" placeholder="Your last name.." />

            <label for="billingcountry">Country</label>
            <input type="text" id="billingcountry" name="billingcountry" placeholder="Your country.." />

            <label for="billingstate">State</label>
            <input type="text" id="billingstate" name="billingstate" placeholder="Your state.." />
            <label for="billingcity">City</label>
            <input type="text" id="billingcity" name="billingcity" placeholder="Your city.." />
            <label for="billingpost">Post Code</label>
            <input type="text" id="billingpost" name="billingpost" placeholder="Your postCode.." />

            <label for="billingaddress">Address Line</label>
            <input type="text" id="billingaddress" name="billingaddress" placeholder="Your address.." />

        </div>
        <button class="collapsible">Payment Method</button>
        <div class="content">

            <h2>Credit card only</h2>
            <label for="cardName">Name on card</label>
            <input type="text" id="cardName" name="cardName"  placeholder="e.g:John Dough.." />


            <label for="creditcard">Credit card number</label>
            <input type="text" id="creditcard" name="creditcard"  required />

            <label for="zipCode">Zip Code</label>
            <input type="text" id="zipCode" name="zipCode" placeholder="eg:9010.." required />

            <label for="cvv">CVV</label>
            <input type="text" id="cvv" name="cvv" placeholder="eg:123.." required />
            <label for="expdate">Expiration Date</label>
            <input type="date" id="expdate" name="expdate" />
            <br>
            <input type="submit" id="checkoutbtn" style="background-color: #777777 ;" value="Checkout" />
            <input type="submit" id="confirmtbtn" style="background-color: #DC143C ;" value="confirm" />

        </div>


    <h3>Items in Chart</h3>

        <table cellpadding="2" cellspacing="2" border="1">
            <tr>


                <th>Name</th>
                <th>Photo</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Sub Total</th>
            </tr>
            <c:set var="total" value="0"></c:set>
            <c:forEach var="item" items="${sessionScope.cart }">
                <c:set var="total" value="${total + item.product.price * item.quantity }"></c:set>
                <tr>

                    <td>${item.product.name }</td>
                    <td>

                        <img src="${pageContext.request.contextPath }resources/images/${item.product.photo }" width="120">
                    </td>
                    <td>${item.product.price }</td>
                    <td>${item.quantity }</td>
                    <td>${item.product.price * item.quantity }</td>
                </tr>
            </c:forEach>
            <tr>
                <td colspan="6" align="right">Total</td>
                <td>${total }</td>
            </tr>
        </table>



</div>
</div>
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

<%--<div id="footer">--%>
<%--    Here Comes The Footer 2014 Copyright--%>
<%--    <div class="social-part">--%>
<%--        <i class="fa fa-facebook" aria-hidden="true"></i>--%>
<%--        <i class="fa fa-twitter" aria-hidden="true"></i>--%>
<%--        <i class="fa fa-instagram" aria-hidden="true"></i>--%>
<%--    </div>--%>
<%--</div>--%>

</body>
</html>