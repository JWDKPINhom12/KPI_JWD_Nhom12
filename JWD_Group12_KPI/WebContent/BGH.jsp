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
<title>Ban giám hiệu</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css"  href="css/style.css">
</script>
<script>
	function mySearch(){
		  var input, filter, table, tr, td, i;
 		  input = document.getElementById("search");
		  filter = input.value.toUpperCase();
		  table = document.getElementById("myTable");
		  tr = table.getElementsByTagName("tr");
	
	  for (i = 0; i < tr.length; i++) {
    	td = tr[i].getElementsByTagName("td")[1];
   		 if (td) {
     	 if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
       		 tr[i].style.display = "";
     	 } else {
        	tr[i].style.display = "none";
      	}
   		} 
 	 }
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
			<li><a href="TrangCaNhanbgh.jsp"><span>Trang cá nhân</span></a></li>
			<li><a href="LoginKPI.jsp"><span class="glyphicon glyphicon-log-out">Thoát</span></a></li>
		</ul>
	</div>
</nav>

	<div class="container">
 		<ul class="nav nav-tabs">
  			<li class="active"><a data-toggle="pill" href="#kpigv">KPI Giảng viên</a></li>
  			<li><a data-toggle="pill" href="#kpitk">KPI Trưởng khoa</a></li>
  		 	<li><a data-toggle="pill" href="#pccv">Phân công công việc</a></li>
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
							<input type="text" class="form-control" name="search" id="search" onkeyup="mySearch()" placeholder="search">
							<span class="glyphicon glyphicon-search form-control-feedback"></span>
						</div>
					</form>
				</div>
			</div>
		</div>


		<sql:query dataSource="${snapshot}" var="result">
		SELECT distinct uname,first_name,last_name,chucvu,duyet from dkkpi d1 inner join members d2 on d1.magv=d2.uname where chucvu = "gv" or chucvu = "tbm";
		</sql:query>

		<div class="container">
		<h3>KPI Giảng Viên</h3>
		<table id="myTable" class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Mã giảng viên</th>
					<th>Tên giảng viên</th>
					<th>Chức vụ</th>
					<th>Chi tiết</th>
					<th>Duyệt</th>
					<th>Đánh giá</th>
				</tr>
			</thead>
			<c:forEach var="row" items="${result.rows}">
			<tbody>
			<tr>
				<td><c:out value="${row.uname}"/></td>
				<td><c:out value="${row.first_name} ${row.last_name}"/></td>
				<td><c:out value="${row.chucvu}"/></td>
				<td><a href="ChiTietKPIgv-bgh.jsp?id=${row.uname}">xem</a></td>
				<td><span class="${row.duyet}"></span></td>
				<td><a href="DanhGiaKPIgv-bgh.jsp?id=${row.uname}">xem</a></td>
			</tr>
			</tbody>
			</c:forEach>
		</table>
	</div>


    </div>


	<div id="kpitk" class="tab-pane fade">
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
		<sql:query dataSource="${snapshot}" var="result">
		SELECT distinct uname,first_name,last_name,khoa,duyet from dkkpi d1 inner join members d2 on d1.magv=d2.uname where chucvu = "tk";
		</sql:query>

		<div class="container">
		<h3>KPI Trưởng Khoa</h3>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Mã giảng viên</th>
					<th>Tên giảng viên</th>
					<th>Khoa</th>
					<th>Chi tiết</th>
					<th>Duyệt</th>
					<th>Đánh giá</th>
				</tr>
			</thead>
			<c:forEach var="row" items="${result.rows}">
			<tbody>
			<tr>
				<td><c:out value="${row.uname}"/></td>
				<td><c:out value="${row.first_name} ${row.last_name}"/></td>
				<td><c:out value="${row.khoa}"/></td>
				<td><a href="ChiTietKPItk-BGH.jsp?id=${row.uname}">xem</a></td>
				<td><span class="${row.duyet}"></span></td>
				<td><a href="DanhGiaKPItk-BGH.jsp?id=${row.uname}">xem</a></td>
			</tr>
			</tbody>
			</c:forEach>
		</table>
	</div>


    </div>


		<sql:query dataSource="${snapshot}" var="result">
				SELECT * from pccv p inner join members m on p.magv=m.uname;
		</sql:query>

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

	<div class="container">
		<h3>Phân công</h3>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Mã giảng viên</th>
					<th>Tên giảng viên</th>
					<th>Tên công việc</th>
					<th>Nội dung</th>
					<th>Tiến độ</th>
					<th>Ngày phân công</th>
				</tr>
			</thead>
			<c:forEach var="row" items="${result.rows}">
			<tbody>
			<tr>
				<td><c:out value="${row.magv}"/></td>
				<td><c:out value="${row.first_name} ${row.last_name}"/></td>
				<td><c:out value="${row.tieude}"/></td>
				<td><c:out value="${row.nd}"/></td>
				<td><c:out value="${row.tiendo}"/></td>
				<td><c:out value="${row.regdate1}"/></td>
			</tr>
			</tbody>
			</c:forEach>
		</table>
	</div>
	<a href="PhanCongcv-BGH.jsp" class="btn btn-primary" role="button">Thêm công việc</a>
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