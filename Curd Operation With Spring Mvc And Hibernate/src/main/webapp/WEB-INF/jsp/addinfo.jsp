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


<div align="center">
   

        <h1>Add New Info</h1>  
       <form:form method="post" action="save">    
        <table >    
         <tr>    
          <td>Name : </td>   
          <td><form:input path="name"  /></td>  
         </tr>    
         <tr>    
          <td>Last Name :</td>    
          <td><form:input path="lname" /></td>  
         </tr>   
         <tr>    
          <td>Phone Number :</td>    
          <td><form:input path="ph" /></td>  
         </tr>  
         <tr>    
          <td>Email :</td>    
          <td><form:input path="email" /></td>  
         </tr> 
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr>    
        </table>    
       </form:form>    


</div>

</body>
</html>