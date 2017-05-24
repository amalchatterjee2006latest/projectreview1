<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@ taglib prefix='form' uri='http://www.springframework.org/tags/form' %>
<!doctype html>
<html>
<head>
  <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
  <title>My User Form!</title>
</head>
<body>

<jsp:include page="Header.jsp"></jsp:include>
<br><br><br><br><br>
  <form:form method='post' action='myForm' commandName='myUser'>
    <table>
      <tr>
        <td>User Name: <font color='red'><form:errors path='name' /></font></td>
      </tr>
      <tr>
        <td><form:input path='name' /></td>
      </tr>
      <tr>
        <td>Password: <font color='red'><form:errors path='password' /></font></td>
      </tr>
      <tr>
        <td><form:input type ="password"    path='password' /></td>
      </tr>
      
      <tr>
        <td>User Email Address: <font color='red'><form:errors path='email' /></font></td>
      </tr>
      <tr>
        <td><form:input path='email' /></td>
      </tr>
      
      <tr>
        <td><input type='submit' value='Submit' /></td>
      </tr>
    </table>
  </form:form>
  
  <jsp:include page="Footer.jsp"></jsp:include> 
</body>
</html>
