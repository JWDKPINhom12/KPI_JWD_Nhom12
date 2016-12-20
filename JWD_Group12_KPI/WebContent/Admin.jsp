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
<title>Administrator</title>
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
	$("#Date1").datepicker({ dateFormat: 'yy-mm-dd' });
	});
</script>  
  
<script type="text/javascript">
	$(function() {
	$("#Date2").datepicker({ dateFormat: 'yy-mm-dd' });
	});
</script> 
<script>
function generateReportD(){
   document.forms['adddel'].action = 'Delbm.jsp';
   document.forms['adddel'].submit();
}

function generateReportA(){
   document.forms['adddel'].action = 'Addbm.jsp';
   document.forms['adddel'].submit();
}
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
 				<li><a href="#" ">Sitemap</a></li>
 				<li><a href="#" ">Liên hệ</a></li>
 				<li><a href="#" ">English</a></li>
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
			<li><a href="TrangCaNhanad.jsp"><span>Trang cá nhân</span></a></li>
			<li><a href="LoginKPI.jsp"><span class="glyphicon glyphicon-log-out">Thoát</span></a></li>
		</ul>
	</div>
</nav>

	<div class="container">
 		<ul class="nav nav-tabs">
  			<li class="active"><a data-toggle="pill" href="#kpigv">Quản lý tài khoản</a></li>
  		 	<li><a data-toggle="pill" href="#pccv">Quản lý biểu mẫu</a></li>
 		</ul>
	<div class="tab-content">
   	<div id="kpigv" class="tab-pane fade in active">
		<div class="container">
			<div class="dropdown">
				<div class="col-md-1 col-md-offset-8">
					<button class=" btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Sắp xếp<span class="caret"></span></button>
						<ul class="dropdown-menu">
							<li><a href="#">Tên</a></li>
							<li><a href="#">Ngày đăng ký</a></li>
							<li><a href="#">Duyệt</a></li>	
						</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<form action="" class="search-form">
						<div class="form-group has-feedback">
							<label for="search" class="sr-only">Search</label>
							<input type="text" class="form-control" name="search" id="search" placeholder="search">
							<span class="glyphicon glyphicon-search form-control-feedback"></span>
						</div>
					</form>
				</div>
			</div>
		</div>
  <form method="post" class="form-horizontal" action="DelMember.jsp" role="form">

		<sql:query dataSource="${snapshot}" var="result">
		SELECT first_name, last_name, uname, pass, chucvu from members;
		</sql:query>

		<div class="container">
		<h3>Tài khoản giảng viên</h3>
		<table class="table table-bordered table-striped">
			 <thead>
  		  	<tr class="thead1">  		  	
  		   	 	<th>Tên giảng viên</th>
    		 	<th>Mã giảng viên</th>
    		 	<th>Password</th>
    		 	<th>Phân quyền</th>
    		 	<th>Xóa</th>
 	   		</tr>
  		 	</thead>
  		 	<c:forEach var="row" items="${result.rows}">
  		 <tbody>
    		<tr>
     	 			<td><c:out value="${row.first_name} ${row.last_name}"/></td>
      				<td><c:out value="${row.uname}"/></td>
      				<td><c:out value="${row.pass}"/></td>
      				<td><c:out value="${row.chucvu}"/></td>
      				<td><input type="radio" name="dk" value="${row.uname}"></td>
    		</tr>
	
  		 </tbody>
  		 </c:forEach>
		</table>
		<div class="btn1">
		<a href="SignUp.jsp" class="btn btn-primary" style="margin-right: 30px" role="button">Thêm</a>
		<button type="button" class="btn btn-primary" style="margin-right: 30px">Sửa</button>
		<button type="submit" class="btn btn-danger">Xóa</button>
		</div>
	</div>
  </form>

    </div>
    <div id="pccv" class="tab-pane fade">

		<div class="container">
			<div class="dropdown">
				<div class="col-md-1 col-md-offset-8">
					<button class=" btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Sắp xếp<span class="caret"></span></button>
						<ul class="dropdown-menu">
							<li><a href="#">Tên</a></li>
							<li><a href="#">Khoa</a></li>
							<li><a href="#">Công việc</a></li>	
						</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<form action="" class="search-form">
						<div class="form-group has-feedback">
							<label for="search" class="sr-only">Search</label>
							<input type="text" class="form-control" name="search" id="search" placeholder="search">
							<span class="glyphicon glyphicon-search form-control-feedback"></span>
						</div>
					</form>
				</div>
			</div>
		</div>


		<sql:query dataSource="${snapshot}" var="result">
		SELECT * from danhsachbm;
		</sql:query>
		
  <div class="container">
  <form name="adddel" method="post" class="form-horizontal" action="" role="form">
    <h3>Chi tiết KPI</h3>
    <table class="table table-bordered table-striped">
      <thead>
          <tr class="thead1">         
          <th>Mã kpi</th>
          <th>Mục tiêu</th>
          <th>Nội dung chi tiết</th>
          <th>Thời gian bắt đầu</th>
          <th>Thời gian kết thúc</th>
          <th>Chỉ tiêu đăng ký</th>
          <th>Điểm KPI max</th>
        </tr>
       </thead>

       <tbody>
        <tr>
          	<td><input name="makpi" type="text" class="form-control input-md"></td>
            <td><input name="muctieu" type="text" class="form-control input-md"></td>
            <td><input name="noidung" type="text" class="form-control input-md"></td>
            <td><input type="text" name="tgbd" id="Date1"></td>
            <td><input type="text" name="tgkt" id="Date2"></td>
            <td><input name="ctdk" type="text" class="form-control input-md"></td>
            <td><input name="dkpimax" type="text" class="form-control input-md"></td>
          </tr>
        <c:forEach var="row" items="${result.rows}">
        <tr>
          <td><c:out value="${row.makpi}"/></td>
          <td><c:out value="${row.muctieu}"/></td>
          <td><c:out value="${row.noidung}"/></td>
          <td><c:out value="${row.tgbd}"/></td>
          <td><c:out value="${row.tgkt}"/></td>
          <td><c:out value="${row.ctdk}"/></td>
          <td><c:out value="${row.dkpimax}"/></td>
        </tr>    
       </tbody>
       </c:forEach>
    </table>
    <div class="btn1">
    <button type="submit" class="btn btn-primary" style="margin-right: 30px" onclick="generateReportA();">Thêm</button>
    <button type="button" class="btn btn-primary" style="margin-right: 30px">Sửa</button>
    <button type="submit" class="btn btn-danger" onclick="generateReportD();">Xóa</button>
    </div>
    </form>
  </div>  
    </div>
  </div>
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


</body>
</html>