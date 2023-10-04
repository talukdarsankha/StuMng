<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.connection.Conn" %>
    <%@page import="com.entity.Student" %>
    <%@page import="com.dao.Dao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update student</title>
<%@include file="all.jsp" %>
</head>
<body>
<%@include file="nav.jsp" %>

<%
int id=Integer.parseInt( request.getParameter("u"));
Dao da = new Dao(Conn.getCon());
 Student ob= da.getById(id);
%>

<div style="width:600px; padding: 50px 50px; margin: 50px 320px;  box-shadow: 0px 0px 20px gray;">
 <h2 style="text-align: center; margin-bottom: 40px; ">Update Student's Details</h2>
<form action="update" method="post">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="F" value="<%=ob.getName()%>">
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Date of Addmission</label>
    <input type="date" class="form-control" id="exampleInputPassword1" name="D" value="<%=ob.getDate()%>" >
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Qualification</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="Q" value="<%=ob.getQualification()%>">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Address</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="A" value="<%=ob.getAddress()%>">
  </div>
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email-id</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="E" value="<%=ob.getEmail()%>">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="P" value="<%=ob.getPassword()%>">
  </div>
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Check me out</label>
  </div>
  <input type="hidden" name="hid" value="<%=ob.getId()%>">
  <button type="submit" class="btn btn-primary" style="width: 400px;">Update</button>
  
</form>
  </div>

</body>
</html>