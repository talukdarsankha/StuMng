<%@page import="com.connection.Conn"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
    <%@page import="com.entity.Student" %>
    <%@page import="com.dao.Dao" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management</title>
<%@include file="all.jsp" %>

</head>
<body>
<%@include file="nav.jsp" %>

 <h1 style="text-align: center; margin: 50px;">All Student's Details</h1>

<c:if test="${not empty su }">
 <p style="text-align: center;color: green;">${su}</p>
 <c:remove var="su"/>
 </c:if>
 <c:if test="${not empty unsu }">
 <p style="text-align: center;color: green;">${unsu}</p>
 <c:remove var="unsu"/>
 </c:if>
<div style="width:1200px; padding: 50px 50px; margin: auto;  box-shadow: 0px 0px 20px gray;">
<table class="table">
  <thead>
    <tr>
      <th scope="col">id</th>
      <th scope="col">Full Name</th>
      <th scope="col">Date of Addmission</th>
      <th scope="col">Qualification</th>
      <th scope="col">Address</th>
      <th scope="col">Email-id</th>
      <th scope="col">Password</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <%
    Dao da = new Dao(Conn.getCon());
    List<Student> ll = da.getAll();
    for(Student e: ll){%>
    
     <tr>
      <th scope="row"><%=e.getId() %></th>
      <td><%=e.getName() %></td>
      <td><%=e.getDate() %></td>
      <td><%=e.getQualification() %></td>
      <td><%=e.getAddress() %></td>
      <td><%=e.getEmail() %></td>
      <td><%=e.getPassword() %></td>
      <td>
      <div class="btn-group" role="group" aria-label="Basic example">
  <button type="button" class="btn btn-primary"><a href="update.jsp?u=<%=e.getId() %>" style="text-decoration: none; color: white; ">edit</a></button>
  <button type="button" class="btn btn-danger " style="margin-left: 10px;"><a href="delete?d=<%=e.getId() %>" style="text-decoration: none; color: white; ">delete</a></button>
  
</div>
 </td>
 </tr>
    	
   <% }
    %>
    	

    
 
   
  </tbody>
</table>
</div>


</body>
</html>