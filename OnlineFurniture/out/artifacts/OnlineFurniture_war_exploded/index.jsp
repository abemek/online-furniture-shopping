<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  <script src="resources/js/scripti.js"></script>
  <script src="resources/js/home.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
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
       <div class="social-part">
         <a class="nav-link" href="/login" style="color:blue">LOGIN</a>
        </div>
    <div class="social-part">
      <i class="fa fa-shopping-cart"><span id="minicart-quantity" onMouseOver="setVisibility('sub1', 'inline');" ></span> </i>

    </div>
  </div>
</nav>

<img id="head-image" src="resources/images/0602_0615_Mattress.jpg">

<!-- <h1 class="ml12">A new production</h1> -->
<h1 class="ml12">Diverse Brands</h1>
<h1 class="ml12 m2"> Styles </h1>
<h1 class="ml12 m3">in One Place</h1>

<h1 class="sub-head">Shop by Catagory</h1>

<div class="shop-catagory-slider">
  <div class="catgroup">
    <button class="btnstart" onclick="plusDivs(-1)">&#10094;</button>

    <div class="cent">
      <div class="category">
        <img src="resources/images/PDUNL30_SEAL_OL_17.png" onclick="plusDivs(-1)"><br>
        <a href="/products?type=mattress"> Mattress</a>
      </div>


      <div class="category">
        <img src="resources/images/PINT141_Outline.png"><br>
        <a href="/products?type=table"> Dining Table</a>
      </div>

      <div class="category">
        <img src="resources/images/webcarousel_sofa.png" onclick="plusDivs(1)"><br>
        <a href="/products?type=Sofa"> Sofa</a>
      </div>
    </div>
    <button class="btnend" onclick="plusDivs(1)">&#10095;</button>
  </div>

  <div class="catgroup">
    <button class="btnstart"  onclick="plusDivs(-1)">&#10094;</button>
<div class="cent">
    <div class="category">
      <img src="resources/images/PTOP428_1_TOPL_OL_15.png" onclick="plusDivs(-1)"><br>
      <a href="/products?type=Bed"> Bed</a>
    </div>

    <div class="category">
      <img src="resources/images/webcarousel_chairs.png"><br>
      <a href="/products>type=Couch"> Couch</a>
    </div>

    <div class="category">
      <img src="resources/images/linen.jpg" onclick="plusDivs(1)"><br>
      <a href="/products?type=linen"> LINENS</a>
    </div>
</div>

    <button class="btnend" onclick="plusDivs(1)">&#10095;</button>

  </div>

</div>
<br>

<div id="divcard">

  <div class="card">
    <img src="resources/images/webcarousel_chairs.png" alt="Avatar" >
    <div class="container">
      <h4><b>John Doe</b></h4>
      <p>Architect & Engineer</p>
      <button class="button">Add To Cart</button>
    </div>
  </div>
  <div class="card">
    <img src="resources/images/sofa1.jpg" alt="Avatar" >
    <div class="container">
      <h4><b>John Doe</b></h4>
      <p>Architect & Engineer</p>
      <button class="button">Add To Cart</button>
    </div>
  </div>
  <div class="card">
    <img src="resources/images/bed3.jpg" alt="Avatar" >
    <div class="container">
      <h4><b>John Doe</b></h4>
      <p>Architect & Engineer</p>
      <button class="button">Add To Cart</button>
    </div>
  </div>
</div>

<div id="footer">
  Here Comes The Footer 2014 Copyright
  <div class="social-part">
    <i class="fa fa-facebook" aria-hidden="true"></i>
    <i class="fa fa-twitter" aria-hidden="true"></i>
    <i class="fa fa-instagram" aria-hidden="true"></i>
  </div>
</div>

</body>
</html>
