<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="model.Person,java.util.*,org.springframework.web.servlet.ModelAndView" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

<link href="maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"> 
<link href="https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css" rel="stylesheet"> 
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"> 
  
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"/> 
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>

<!DOCTYPE html>
<html>
    <head>
      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
     <jsp:include page="Header.jsp"></jsp:include>
     
     <br><br><br><br><br>
        <h1><center>Buy Products</center></h1>
        <%
        HttpSession ses=request.getSession();
      
        List plist1=(List)request.getAttribute("listProduct");
        Iterator i=plist1.iterator();
        while(i.hasNext())
        {
            Person p1=(Person)i.next();
        
        
        
        %>
       <form action="cart" commandName="cart" method="post">
       <div class="container-fluid">
       <center>
           <table width="40%" class="table table-striped table-bordered"  id="example"  cellspacing="0" >
	<tr>
    	<th>select to buy</th>
    </tr>
	<tr>
		<td>Click on the box to buy</td>    	
        <th>Product Id</th>
        <th>Product Name</th>
        <th>Product Category</th>
        <th>Product Price</th>
        
    </tr>   
    <tr>
       <%int id=p1.getId();%>
    	  	<td>
    	  		<input type="checkbox" name="itemId" value="<%=p1.getId()%>" >
    	  	</td>	
                <td><%=id%></td>
                
                <td name="xx" ><input type="text" name="txtpn" value="<%=p1.getProductname()%>" readonly="true" /></td>
                
                <td name="yy" ><input type="text" name="txtcat" value="<%=p1.getCategory()%>" readonly="true" /></td>
                 <td name="zz" ><input type="text" name="txtprice" value="<%=p1.getPrice()%>" readonly="true" /></td>
                 
                
                
    </tr>
      <%}%>

	<tr>
		<td>
			<INPUT id="submit" name="submit" type="submit" value="Submit Items"/>
		</td>
	</tr>
        
</table>
</center>
</div>
        </form>
        
        <script>
$(document).ready(function(){
    $('#example').DataTable({"oSearch": {"sSearch": "${param.name}"}});
});
</script>
        
        
        
  <div>
  
  <jsp:include page="Footer.jsp"></jsp:include>
  </div>
    </body>
    
    
   
</html>