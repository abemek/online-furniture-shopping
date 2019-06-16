<%--
  Created by IntelliJ IDEA.
  User: Pomi-dave
  Date: 6/16/2019
  Time: 12:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .my_div {
            position: absolute;
            left: 500px;
            top: 100px;
            background-color: #306080;
            width: 280px;
            padding: 10px;
            color: white;
            border: #0000cc 2px  dashed;
            display: none;
        }
    </style>
    <script language=\"JavaScript\">
function setVisibility(id, visibility) {
document.getElementById(id).style.display = visibility;
}
</script>
</head>
<body>
<a href='../../index.php' onMouseOver="setVisibility('sub1', 'inline');" onMouseOut="setVisibility('sub1','none');">plus2net Home</a><br>
<a href='../index.php' onMouseOver="setVisibility('sub2', 'inline');" onMouseOut="setVisibility('sub2','none');">HTML  Home</a><br>
<a href='../../sql_tutorial/site_map.php' onMouseOver="setVisibility('sub3', 'inline');" onMouseOut="setVisibility('sub3','none');">Sql  Home</a><br>
<a href='../../php_tutorial/site_map.php' onMouseOver="setVisibility('sub4', 'inline');" onMouseOut="setVisibility('sub4','none');">PHP  Home</a><br>
<a href='../../javascript_tutorial/site_map.php' onMouseOver="setVisibility('sub5', 'inline');" onMouseOut="setVisibility('sub5','none');">JavaScript Home</a><br>


<div id="sub1" class=my_div>You are going to plus2net home page</div>
<div id="sub2" class=my_div>Visit html home page</div>
<div id="sub3" class=my_div>SQL home page</div>
<div id="sub4" class=my_div>You are going to visit PHP home page</div>
<div id="sub5" class=my_div>JavaScript Home page</div>
</body>
</html>
