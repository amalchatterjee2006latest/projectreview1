<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
     pageEncoding="ISO-8859-1"%> 
   
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
 <html> 
 <head> 
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
 <title>Amal's Sport centre</title> 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css"> 
 
 
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script> 
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
 
 
 </head> 
 <body> 
 <marquee><strong>WELCOME TO AMAL'S SPORTS CENTER</strong></marquee>
   <!--Header --> 
     <jsp:include page="Header.jsp"></jsp:include> 
      
  <br><br><br><br><br>
  
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/cricket.jpg" alt="pic1" width="300" height="345">
      </div>

      <div class="item">
        <img src="resources/images/football.jpg" alt="pic2" width="300" height="345">
      </div>
    
      <div class="item">
        <img src="resources/images/hockey.jpg" alt="pic3" width="300" height="345">
      </div>

      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<!-- for facebook -->

  <div class="a">
            <div class="row">
                <div class="col-md-8 ">
                    <p>
			   			<a  href="https://www.facebook.com/"><i class="fa fa-facebook fa-3x"></i></a>
			    		<a  href="https://github.com/"><i class="fa fa-github fa-3x"></i></a>
			    		<a  href="https://twitter.com/"><i class="fa fa-twitter fa-3x"></i></a>
			    </p>
			    </div>
                </div>
               
            </div>
        </div>
<!-- end of facebook -->
   

        <hr>
        <marquee><strong>WELCOME TO AMAL'S SPORTS CENTER</strong></marquee>
        

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p><center><strong>Copyright &copy; This Website 2017</strong></center></p>
                </div>
            </div>
        </footer>




</body>
</html>



