<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
  <script type="text/javascript" src="js/bootstrap/bootstrap-dropdown.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 30%;
      margin: auto;
  }
  </style>
</head>
<body>
    
<div class="container">
  <br>
  
  <!-- for gliph icon -->
  
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="./about">About Us</a></li>
       <li class="active"><a href="./feedback">FeedBack</a></li> 
      <li class="active"><a href="./contact">Contact Us</a></li>
        <li class="active"><a href="./quit">Log out</a></li> 
         <li class="active"><a href="./home">Home</a></li> 
         <!--<li class="active"><a href="./ProductDetails">Product details</a></li>--> 
           
            <li class="active"><a href="./ProductDetailsdummy">product details</a></li>
          
          
          <!-- addition --> 
                   
                       <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">LOGIN<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="./persons">ADMINISTRATOR</a>
                            </li>
                            <li>
                                <a href="./myForm">NEW CUSTOMER</a>
                            </li>
                            
                             <li>
                                <a href="./myForm">EXISTING CUSTOMER</a>
                            </li>
                            
                        </ul>
                    </li>
              </ul>
         <!-- end of addition -->
    
   <!-- <ul class="nav navbar-nav navbar-right"> --> 
    <!-- <li><a href="./persons"><span class="glyphicon glyphicon-user"></span>ADMIN</a></li> -->  
       <!-- <li><a href="./myForm"><span class="glyphicon glyphicon-user"></span>NORMAL USER</a></li> -->
      
      
       
    </ul>
  </div>
</nav>
  
  <!-- end of gliphicon -->
  
  <script type="text/javascript" src="js/bootstrap/bootstrap-dropdown.js"></script>
<script>
     $(document).ready(function(){
        $('.dropdown-toggle').dropdown()
    });
</script>
  
  <body>