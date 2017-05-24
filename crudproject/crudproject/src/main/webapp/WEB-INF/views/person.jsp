<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
    <title>PRODUCT PAGE</title>
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
    Add NEW PRODUCT
</h1>
 
<c:url var="addAction" value="/person/add" ></c:url>
 
<form:form action="${addAction}" modelAttribute="person">
<table>
    <c:if test="${!empty person.productname}">
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
    </c:if>
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
    <tr>
        <td colspan="2">
            <c:if test="${!empty person.productname}">
                <input type="submit"
                    value="<spring:message text="Edit Product"/>" />
            </c:if>
            <c:if test="${empty person.productname}">
                <input type="submit"
                    value="<spring:message text="Add Product"/>" />
            </c:if>
        </td>
    </tr>
</table>  
</form:form>
<br>
<h3>Product  List</h3>
<c:if test="${!empty listPersons}">
    <table class="tg">
    <tr>
        <th width="80">Product ID</th>
        <th width="120">Product Name</th>
        <th width="120">Product Price</th>
        <th width="120">Product Category</th>
        <th width="60">Edit</th>
        <th width="60">Delete</th>
    </tr>
    <c:forEach items="${listPersons}" var="person">
        <tr>
            <td>${person.id}</td>
            <td>${person.productname}</td>
            <td>${person.price}</td>
            <td>${person.category}</td>
            <td><a href="<c:url value='/edit/${person.id}' />" >Edit</a></td>
            <td><a href="<c:url value='/remove/${person.id}' />" >Delete</a></td>
        </tr>
    </c:forEach>
    </table>
</c:if>


<jsp:include page="Footer.jsp"></jsp:include> 
</body>
</html>