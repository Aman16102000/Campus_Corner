<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import = " java.sql.* " %>
<%@ page import = " com.database.Dao" %>

<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    
</head>
<body>
<div class="container">

<div class="row">
  <div class="col-12 col-sm-12" >
  <div align="center">
 <h1> Welcome <%
   String userid=request.getParameter("Userid");
  out.println(" "+userid);
  Connection con=Dao.getDbConnection();
  session.setAttribute("Userid",userid);
//  System.out.println(selectQ);
	  %></h1>
	  
	  </div>
	  </div>
</div>
<div class="row">
  <div class="col-12 col-sm-3">
    <a href="Blog.jsp"><input type="button" class="btn btn-primary" value="My Blog's"></a>
  </div>
  <div class="col-12 col-sm-3">
    <a href="addBlog.jsp"><input type="button" class="btn btn-primary" value="Write Blog"></a>
  </div>
  <div class="col-12 col-sm-3">
    <a href="Seacrh.jsp"><input type="button" class="btn btn-primary" value="search user"></a>
  </div>
</div>
</div>

 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    
</body>
</html>