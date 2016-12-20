<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm biểu mẫu</title>


	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 	<script src="js/bootstrap.min.js"></script>   

 	<link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.css" rel="stylesheet" type="text/css">
	
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	
	<link rel="stylesheet" type="text/css"  href="css/style.css">	
	
	<script type="text/javascript">
	$(function() {
	$("#tgbd").datepicker({ dateFormat: 'yy-mm-dd' });
	});
</script>  
  
<script type="text/javascript">
	$(function() {
	$("#tgkt").datepicker({ dateFormat: 'yy-mm-dd' });
	});
</script> 

</head>
<body>
	    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
	    	    url="jdbc:mysql://localhost/db_kpi"
	    	    user="root"  password="1672538Son"/>

		<sql:query dataSource="${snapshot}" var="result">
						SELECT * from members where uname = <%=session.getAttribute("userid")%>;
		</sql:query>
<div class="page-wrap">
	<div class="header">
	<div class="container" style="padding: 15px">
		<div class="col-md-7 ">
			<div class="logo">
				<img src="img/logo.png" >
			</div>
		</div>
 		
 		<div id="footer">
 			<ul>
 				<li><a href="#">Sitemap</a></li>
 				<li><a href="#">Liên hệ</a></li>
 				<li><a href="#">English</a></li>
 			</ul>
		</div>
	</div>
	</div>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
				<li><a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span>Trang chủ</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
		    <c:forEach var="row" items="${result.rows}">
			<li><a href="#"><span class="glyphicon glyphicon-user"><c:out value="${row.first_name} ${row.last_name}"/></span></a></li>
			</c:forEach>
			<li><a href="LoginKPI.jsp"><span class="glyphicon glyphicon-log-out">Thoát</span></a></li>
		</ul>
	</div>
</nav>

<div class="container">
<form method="post" class="form-horizontal" id="signup" action="Addbm.jsp" role="form">
<fieldset>
<legend>Biểu mẫu</legend>
<div class="form-group">
  <label class="col-md-4 control-label" for="makpi">Mã KPI</label>  
  <div class="col-md-4">
  <input id="makpi" name="makpi" type="text" class="form-control input-md">    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="muctieu">Mục tiêu</label>  
  <div class="col-md-4">
  <input id="muctieu" name="muctieu" type="text" class="form-control input-md">    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="noidung">Nội dung chi tiết</label>  
  <div class="col-md-4">
  <input id="noidung" name="noidung" type="text" class="form-control input-md">    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="tgbd">Thời gian bắt đầu</label>  
        <div class="col-md-4">
            <input type="text" name="tgbd" class="form-control input-md" id="tgbd">
        </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="tgkt">Thời gian kết thúc</label>
        <div class="col-md-4">
            <input type="text" name="tgkt" class="form-control input-md" id="tgkt">
        </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="ctdk">Chỉ tiêu đăng ký</label>
  <div class="col-md-4"> 
  <input id="ctdk" name="ctdk" type="text" class="form-control input-md">
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="dkpimax">Điểm KPI tối đa</label>
  <div class="col-md-4"> 
  <input id="dkpimax" name="dkpimax" type="text" class="form-control input-md">
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button type ="submit" id="submit" class="btn btn-primary" >Xác nhận</button>    
    <a href="Admin.jsp" class="btn btn-danger" role="button">Hủy</a>
  </div>
</div>
</fieldset>
</form>
</div>

</div>
	<footer class="site-footer">
		<div class="container">
			<div class="row">
				<div class="bottom-footer">
					<div class="col-md-7">
						<p>Copyright © 2016, Trường Đại Học Sư Phạm Kỹ Thuật - Tp.HCM</p>
						<p>Địa chỉ: 1 Võ Văn Ngân, Phường Linh Chiểu, Quận Thủ Đức, Thành phố Hồ Chí Minh.</p>
						<p>Điện thoại: (+84 - 8) 38968641 - (+84 - 8) 38961333</p>
					</div>
				</div>
			</div>
		</div>
	</footer>

<script>

function validateText(id){
	if($("#"+id).val()==null || $("#"+id).val()=="")
	{
		var div = $("#"+id).closest("div");
		div.removeClass("has-success");
		$("#glypcn"+id).remove();
		div.addClass("has-error has-feedback");
		div.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-remove form-control-feedback"></span>')
		return false;
	}
	else
	{
		var div = $("#"+id).closest("div");
		div.removeClass("has-error");
		div.addClass("has-success has-feedback");
		$("#glypcn"+id).remove();
		div.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-ok form-control-feedback"></span>')
		return true;
	}
}

$(document).ready(
		function(){
			$("#submit").click(function()
			{

				if(!validateText("makpi"))
				{
					return false;
				}
				if(!validateText("muctieu"))
				{
					return false;
				}
				if(!validateText("noidung"))
				{
					return false;
				}
				if(!validateText("tgbd"))
				{
					return false;
				}
				if(!validateText("tgkt"))
				{
					return false;
				}
				if(!validateText("ctdk"))
				{
					return false;
				}
				if(!validateText("dkpimax"))
				{
					return false;
				}
			});
		}
		)
</script>



</body>
</html>