<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = " java.sql.* " %>
    
    <%@ page import = " com.database.Dao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
     <link rel="stylesheet" href="Home.css">
    
</head>
<body>
 
<div class="container">

  <div class="row">
     <div class="col-12 col-sm-4 mt-5"><h1>What's new</h1></div> 
  </div>
  <%
 String userid=(String)session.getAttribute("Userid");
  session.setAttribute("uid", userid);
  %>
  <div class="row">
     <form action="blogAdded.jsp" method="get">
     <div class="form-group row">
     <div class="col-12 col-sm-8">
      <textarea rows="10" cols="140" name="blog" style="border:solid 2px #8E44AD" style='font-family: arial'></textarea>
     </div>
  </div>
     <div class="form-group row">
     <div class="col-12 col-sm">
     <input type="submit" value="post" class="btn btn-success">
     </div>
     </div>
     </form>
     
     </div>
  </div>


  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    
</body>
</html>