<%@ page language="java" contentType="text/html; charset=utf-8"
 pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>CustomerForm</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
 rel="stylesheet">
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>
 <div class="container">
 	<div class="col-md-offset-1 col-md-12">
   <div class="panel panel-info">
    <div class="panel-heading">
    <h3 class="text-center font-weight-bold">Company Director NRC</h3></br>
    </div>
    <div class="panel-body">
     <form:form action="saveCustomer" cssClass="form-horizontal"
      method="post" modelAttribute="customer">
 
      <form:hidden path="id" />
      
      <div class="form-group row">
       <label for="name" class="col-md-3 control-label font-weight-bold">Company Name​</label>
       <div class="col-md-9">
        <form:input path="name" cssClass="form-control" />
       </div>
      </div>   
      <div class="form-group row">
       <label for="ceo" class="col-md-3 control-label font-weight-bold">Director/CEO Name</label>
       <div class="col-md-9">
        <form:input path="ceo" cssClass="form-control" />
       </div>
      </div>
       <div class="form-group row">
       <label for="nrc" class="col-md-3 control-label font-weight-bold">NRC​</label>
       <div class="col-md-9">
        <form:input path="nrc" cssClass="form-control" />
       </div>
      </div>     
       <div class="form-group row">
       <label for="phNo" class="col-md-3 control-label font-weight-bold">Phno</label>
       <div class="col-md-9">
        <form:input path="phNo" cssClass="form-control" />
       </div>
      </div>
      <div class="form-group row">
       <label for="email" class="col-md-3 control-label font-weight-bold">Email</label>
       <div class="col-md-9">
        <form:input path="email" cssClass="form-control" />
       </div>
      </div>
      
      <div class="form-group row">
       <label for="job" class="col-md-3 control-label font-weight-bold">Business</label>
       <div class="col-md-9">
        <form:input path="job" cssClass="form-control" />
        </div>
       </div>
      </div>  
         
      <div class="form-group row">
       <label for="city" class=" col-md-3 control-label font-weight-bold">City</label>
       <div class="col-md-9">
        <form:input path="city" cssClass="form-control" />
       </div>
      </div>
       
      <div class="form-group row">
       <label for="dept" class="col-md-3 control-label font-weight-bold">Department</label>
       <div class="col-md-9">
        <form:input path="dept" cssClass="form-control" />
       </div>
      </div></br>
      
      <div class="form-group">
       <div class="col-md-offset-3 col-md-9 text-center">
       <div class="row">
       <div class="col-md-3">
       </div>
        <form:button  class="btn btn-success">Submit</form:button>
        <div class="col-md-4">
        </div>
        <form:button  class="btn btn-warning text-white">Reset</form:button>
         </div>
        </div>
       </div>  
     </form:form>
    </div>
   </div>
  </div>
 </div>
</body>
</html>