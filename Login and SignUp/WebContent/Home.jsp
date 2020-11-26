<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="Home.css">
    <title>Hello, world!</title>
  </head>
  <body>
        <header class="jumbotron">
        <div class="container">
            <div class="row">
            <div class="col-12 col-sm-4"><h1>Campus Corner</h1></div>
            <div class="col-sm-2"></div>
              <div class="col-12 col-sm-6 "><h3>Be the change you wish to see in the world</h3></div>
            
            </div>
            
        </div>
        </header>
        <div class="container">
           <div class="row-content">
              <div class="col-12"><h1>Sign in</h1></div>
              <div class="col-12 col-sm-9">
              <form action="checker" method="get">
                  <div class="form-group row">
                     <label class="col-12 col-sm-2 col-form-label">User Id:</label>
                     <div class="col-12 col-sm-7 ">
                        <input type="text" class="form-control" name="Userid" placeholder="user Id">
                     </div>
                     <div class="col-12 col-sm"></div>
                  </div>
                  <div class="form-group row">
                     <label class="col-12 col-sm-2 col-form-label">Password:</label>
                     <div class="col-12 col-sm-7 ">
                        <input type="password" class="form-control" name="pas" placeholder="Password">
                     </div>
                     <div class="col-12 col-sm"></div>
                  </div>
                  <div class="form-group row">
                     <div class="col-12 col-sm-2 col-form-label"><label col="form-label">Who:</label></div>
                     <div class="col-12 col-sm-7 ">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                        <label class="btn btn-success">
                        <input type="radio" name="options" value=0 autocomplete="off" checked> Student
                         </label>
                         <label class="btn btn-danger">
                        <input type="radio" name="options" value=1 autocomplete="off"> Teachers
                         </label>
                          <label class="btn btn-info">
                        <input type="radio" name="options" value=2 autocomplete="off"> Admin
                         </label>
                         </div>
                     </div>
                     <div class="col-12 col-sm"></div>
                  </div>
                  <div class="form-group row">
                   <div class="col-3 col-sm-2"></div>
                   <button class="btn btn-primary ml-3" type="submit">Submit</button>
                  </div>
              </form>
              </div>
           </div>
        </div>

    <!-- Option 2: jQuery, Popper.js, and Bootstrap JS-->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    
  </body>
</html>