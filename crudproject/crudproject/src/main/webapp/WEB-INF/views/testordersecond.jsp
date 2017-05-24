<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<%@page import="model.Person" %>
<%@page import="model.orderdetails" %>

<%@page import="java.util.*" %>
<html>
<head>
    <title>CART PAGE</title>
    <style type="text/css">
        .tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
        .tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;}
        .tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
        .tg .tg-4eph{background-color:#f9f9f9}
    </style>
</head>
<body>


 <jsp:include page="Header.jsp"></jsp:include> 
 
 <br><br><br><br>
<h1>
    CART PRODUCT
</h1>

<c:url var="addAction" value="/agree" ></c:url>
 
<form:form action="${addAction}" modelAttribute="ordersecond">

<table>


 <tr>
        <td>
            <form:label path="id">
                <spring:message text="ID"/>
            </form:label>
        </td>
        <td>
            <form:input path="id" readonly="true" size="8"  disabled="true" />
            <form:hidden path="id" />
        </td> 
</tr>
    
    
    
    
 <tr>
        <td>
            <form:label path="productname">
                <spring:message text="ProductName"/>
            </form:label>
        </td>
        <td>
            <form:input path="productname" />
        </td> 
</tr>
    
 <tr>
        <td>
            <form:label path="price">
                <spring:message text="Price"/>
            </form:label>
        </td>
        <td>
            <form:input path="price" />
        </td>
        
        
        
</tr>


 <tr>
        <td>
            <form:label path="category">
                <spring:message text="Category"/>
            </form:label>
        </td>
        <td>
            <form:input path="category" />
        </td>
        
        
        
 </tr>
    
    
</table>


</form:form>
 

<h3>Product  List</h3>




 <table width="20%" class="table table-striped table-bordered"  id="example"  cellspacing="0" >
<%
        HttpSession ses=request.getSession();
        ArrayList<Person> order=(ArrayList)ses.getAttribute("orderItems");
        
       %>

 <tr>  
           <th>Product Id</th>
            <th>Product Name</th>  
            <th>Product Category</th>
            <th>Product Price</th>  
          
         
          </tr>  




<c:if test="${!empty orderItems}">
   
    <c:forEach items="${orderItems}" var="item">
        <tr>
           <td><input type="text" name="itemid" value=${item.id} readonly="true"/></td>   
             
              
            <td><input type="text" name="txtpn" value=${item.productname} readonly="true"/></td>
           
            <td><input type="text" name="txtcat" value=${item.category} readonly="true"/></td>
            
             <td><input type="text" name="txtprice" value=${item.price} readonly="true"/></td>
            <td><a href="<c:url value="/agree" />" >Agree</a></td>
            <!--<td><a href="<c:url value='/remove/${person.id}' />" >Delete</a></td>  -->
        </tr>
    </c:forEach>
    </table>
    
</c:if>


<jsp:include page="Footer.jsp"></jsp:include> 
</body>
</html>