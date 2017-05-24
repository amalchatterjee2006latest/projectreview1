<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
  <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
  <title>My User validation form Form!</title>
</head>
<body>

<jsp:include page="Header.jsp"></jsp:include>
<br><br><br><br><br>

<c:url var="addAction" value="/userdetail/add"  ></c:url>


  <form:form  action="${addAction}" modelAttribute="user"  method="GET">
  <center>
    <table>
      <tr>
        <td>User Name: <font color='red'><form:errors path='username' /></font></td>
      </tr>
      <tr>
        <td><form:input path='username' /></td>
      </tr>
      <tr>
        <td>User Address: <font color='red'><form:errors path='useraddress' /></font></td>
      </tr>
      <tr>
        <td><form:input path="useraddress"    /></td>
      </tr>
      
      <tr>
        <td>User Email Address: <font color='red'><form:errors path='email' /></font></td>
      </tr>
      <tr>
        <td><form:input  path='email' /></td>
      </tr>
      
      
      
        <tr>
        <td>User Phone Number: <font color='red'><form:errors path='phoneno' /></font></td>
      </tr>
      <tr>
        <td><form:input    path='phoneno' /></td>
      </tr>
        
      
      
      
      <tr>
        <td><input type='submit' value='Submit' /></td>
      </tr>
    </table>
    </center>
  </form:form>
  
  <jsp:include page="Footer.jsp"></jsp:include> 
</body>
</html>
