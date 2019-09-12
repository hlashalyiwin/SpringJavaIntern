<%@ page language="java" contentType="text/html; charset=utf-8"
 pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Company List</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
 rel="stylesheet">
<%@ page isELIgnored="false"%>
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>
 <div class="container-fluid">
  <div class="col-md-offset-1 col-md-12">
   <h3 class="text-center font-weight-bold">Company List</h3>
   <hr />
   <input type="button" class="btn btn-info" value="Add Customer List"
    onclick="window.location.href='Add'; return false;"
    class="btn btn-primary" /> <br/><br />
   <div class="panel panel-info">
    <div class="panel-heading">
     <div class="panel-title"></div>
    </div>
    <div class="panel-body">
     <table class="table table-striped table-bordered ">
      <tr>
      <th>ID​</th>
       <th>Company Name</th>
       <th>Director/CEO Name</th>
       <th>NRC</th>
       <th>Phno</th>
       <th>Email</th>
       <th>Business</th>
       <th>City</th>
       <th>Department</th>
       <th>Edit</th>
       <th>Delete</th>
      </tr>
      <!-- loop over and print our customers -->
      <c:forEach var="tempCustomer" items="${customers}">
       <!-- construct an "update" link with customer id -->
       <c:url var="editLink" value="/customer/editForm">
        <c:param name="customerId" value="${tempCustomer.id}" />
       </c:url>
       <!-- construct an "delete" link with customer id -->
       <c:url var="deleteLink" value="/customer/delete">
        <c:param name="customerId" value="${tempCustomer.id}" />
       </c:url>
       <tr>
       	<td>${tempCustomer.id}</td>
        <td>${tempCustomer.name}</td>
        <td>${tempCustomer.ceo}</td>
        <td>${tempCustomer.nrc}</td>
        <td>${tempCustomer.phNo}</td>
        <td>${tempCustomer.email}</td>
        <td>${tempCustomer.job}</td>
        <td>${tempCustomer.city}</td>
        <td>${tempCustomer.dept}</td>
        <td><a href="${editLink}">Edit​</a></td>
        <td><a href="${deleteLink}">Delete</a></td>
       </tr>
      </c:forEach> 
     </table>
    </div>
   </div>
  </div>
 </div> 
</body>
</html>