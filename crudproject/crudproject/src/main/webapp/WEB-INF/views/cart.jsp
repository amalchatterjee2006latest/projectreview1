<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Person" %>

<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome User</title>
    </head>
    <body>
    
    
    <jsp:include page="Header.jsp"></jsp:include>
    <br><br><br>
        <h1><Center>Your Order Summery is</Center></h1>
        <br>
        <br>
        <h2><center><b>Order summery</b></center></h2>
        <center>
        
        
        
        
        
        
        <c:url var="addAction" value="/userorder/add"  ></c:url>



        
        
        
        <table width="20%" class="table table-striped table-bordered"  id="example"  cellspacing="0" >
        <%
        HttpSession ses=request.getSession();
        ArrayList<Person> order=(ArrayList)ses.getAttribute("orderItems");
     //   String[] qtys=(String[])ses.getAttribute("orderQty");
        Iterator i=order.iterator();
        int ctr=0;
            
        while(i.hasNext())
        {
            
                Person ov=(Person)i.next();
        %>
        <tr>
            <td><b>Product Orderd:</b></td>
            <td><b><input type="text" name="txtpn"  value="<%=ov.getProductname()%>" readonly="true" /></b></td>
        </tr>
         <tr>
            <td><b>Unit Price:</b></td>
            <td><b><input type="text" name="txtprice" value="<%=ov.getPrice()%>" readonly="true" /></b></td>
                
            
                   
        </tr>
        
         <tr>
            <td><b>Category:</b></td>
            <td><b><input type="text" name="txtcat" value="<%=ov.getCategory()%>" readonly="true" /></b></td>
        </tr>
       
        
      
        
        <%}
%>
        </table>
       
        </center>
       <!-- new addition for total price -->
        <div>
         
         
           <%
        HttpSession ses1=request.getSession();
        ArrayList<Person> order1=(ArrayList)ses.getAttribute("orderItems");
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