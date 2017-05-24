<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Person" %>
<%@page import="model.orderdetails" %>

<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome User</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<link href="maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"> 
<link href="https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css" rel="stylesheet"> 
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"> 
  
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"/>

 
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        
        
        
        
    </head>
    <body>
    
    
    <jsp:include page="Header.jsp"></jsp:include>
    <br><br><br>
        <h1><Center>Your Order Summery is</Center></h1>
        <br>
        <br>
        <h2><center><b>Order summery</b></center></h2>
        <center>
        
        
        
        
        
        
      


<div class="container-fluid">
<c:url var="addAction" value="/orderdetails" ></c:url>
     <form:form action="${addAction}" modelAttribute="orderdetails" method="post">
       
    
       
        <table width="20%" class="table table-striped table-bordered"  id="example"  cellspacing="0" >
     <%
        HttpSession ses=request.getSession();
        ArrayList<Person> order=(ArrayList)ses.getAttribute("orderItems");
        
       %>
    
        <tr>  
            <th>Product Name</th>  
            <th>Product Price</th>
            <th>Product Category</th>  
          
         
          </tr>  
  	</thead>  
    <tbody>
        <c:if test="${!empty orderItems}">
 		  	<c:forEach items="${orderItems}" var="item"> 
            
            <tr>
				
                <td>${item.productname}</td>

                <td>${item.price}
                                      
                </td>
                 <td>${item.category}</td>
             </tr>   
                   
                  <!--<td><input type="checkbox" name="vehicle1"/>Buy now</td>  -->
                 <!--<td><input type="checkbox" name="vehicle1"/>Buy now</td>  -->
         
				</c:forEach>
         </c:if>	 

           
    
        </table>
        
        <div>
           <INPUT id="submit" name="submit" type="submit" value="Confirm"/>
    
        </div>
        </div>
      </form:form>
        </center>
       <!-- new addition for total price -->
        <div>
         
         <!-- for data  store in order table -->
         
         <%
        HttpSession ses2=request.getSession();
        ArrayList<Person> order2=(ArrayList)ses2.getAttribute("orderItems");
        		  Iterator i2=order2.iterator();
        		  int id;
        		  String productname;
        		  String  category;
        		  int price;
        		  while(i2.hasNext())
        	        {
        	            
        	                Person ov=(Person)i2.next();
        	                id=ov.getId();
        	                productname=ov.getProductname();
        	                category=ov.getCategory();
        	                price=ov.getPrice();
        	                 orderdetails o=new orderdetails();
        //	                out.print(price);
        	        }
        		  
           
       %>
      
         <!-- end of data store in order table -->



         
         
           <%
        HttpSession ses1=request.getSession();
        ArrayList<Person> order1=(ArrayList)ses1.getAttribute("orderItems");
     //   String[] qtys=(String[])ses.getAttribute("orderQty");
        Iterator i1=order1.iterator();
       // int ctr1=0;
        int sum=0,sum1=0,x=0;    
        while(i1.hasNext())
        {
            
                Person ov=(Person)i1.next();
      
         
            sum=ov.getPrice();
            		   
            sum1=sum1+sum;
            
            
              //ctr1=ctr1+1;
          }
          
        x=x+sum1;
       %>
       <font color="blue" size=20><center>Total Ordered value is Rs. 
       <%    
        out.print(x);
        
       %>
         
      </center></font>
        </div>
        <center>
         <table>
         <tr>
        <!--<td><a href="./userdetails">Confirm</a></td>-->
        <td><a href="./userdetail/add"><font  color="blue">Confirm</font></a></td>  
        
        <!--<td><a href="./md"><font  color="blue">Confirm</font></a></td>  -->     
         
        </tr>
        <tr>
         <td><a href="./quit"><font color="blue">checkout</font></a></td>
         
         </tr>
         
          </table>
          </center>
        </div>
        <div>
        <jsp:include page="Footer.jsp"></jsp:include>
        </div>
    </body>
</html>