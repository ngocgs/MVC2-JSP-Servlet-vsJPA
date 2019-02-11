<%-- 
    Document   : admin
    Created on : Feb 11, 2019, 9:23:03 AM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin page</title>
    </head>
    <body>
        <h1>Wellcome, ${sessionScope.loginUser}</h1>
        <form action="ManageServlet" method="post">
            Employee ID : <input type="text" name="empid" value="${employee.employeeid}"/><br>
            FirstName : <input type="text" name="firstname" value="${employee.firstname}"/><br>
            LastName : <input type="text" name="lastname" value="${employee.lastname}"/><br>
            Email : <input type="text" name="email" value="${employee.email}"/><br>
            
            <input type="submit" name="action" value="ADD"/>|
            <input type="submit" name="action" value="EDIT"/>|
            <input type="submit" name="action" value="DELETE"/>|
            <input type="submit" name="action" value="VIEW"/>
        </form>
            
            <table>
                <th>EmployeeID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                    <c:forEach var="emp" items="${getAllEmployee}">
                    
                    <tr>
                        <td>${emp.employeeid}</td>
                        <td>${emp.firstname}</td>
                        <td>${emp.lastname}</td>
                        <td>${emp.email}</td>
                    </tr>
                    
                    </c:forEach>
                
            </table>
        
    </body>
</html>
