<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

   <form:form method="POST" action="/save">
  
  <table>
       
       <tr>
           <td><form:label path="name">Name:</form:label></td>
           <td><form:input path="name" value="${infomodel.name}" readonly="true"/></td>
       </tr>
       <tr>
           <td><form:label path="lname">Last Name:</form:label></td>
           <td><form:input path="lname" value="${infomodel.lname}" readonly="true"/></td>
       </tr>
       <tr>
           <td><form:label path="ph">Phone Number:</form:label></td>
           <td><form:input path="ph" value="${infomodel.ph}" readonly="true"/></td>
       </tr>
       <tr>
           <td><form:label path="address">Address:</form:label></td>
           <td><form:input path="address" value="${infomodel.address}" /></td>
       </tr>
      
          <tr>
         <td colspan="2"><input type="submit" value="Submit"/></td>
        </tr>
       
 </table>

</form:form>

<c:if test="${!empty infomodel}">
  <h2>List Employees</h2>
 <table align="left" border="1">
  <tr>
   <th>Employee ID</th>
   <th>Employee Name</th>
   <th>Employee Age</th>
   <th>Employee Salary</th>
   <th>Employee Address</th>
           <th>Actions on Row</th>
  </tr>

  <c:forEach items="${infomodel}" var="infomodel">
   <tr>
    <td><c:out value="${infomodel.id}"/></td>
    <td><c:out value="${infomodel.name}"/></td>
    <td><c:out value="${infomodel.lname}"/></td>
    <td><c:out value="${infomodel.ph}"/></td>
    <td><c:out value="${employee.address}"/></td>
    
   </tr>
  </c:forEach>
 </table>
</c:if>





</body>
</html>