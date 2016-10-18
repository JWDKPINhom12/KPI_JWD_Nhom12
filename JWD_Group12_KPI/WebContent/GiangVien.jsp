<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Giảng Viên</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container" style="padding: 15px">
		<div class="col-md-1 ">
			<div class="logo">
				<img src="img/logo.png" >
			</div>
		</div>
 		
 		<div class="col-md-1 col-md-offset-9">
 			<div class="btn-group btn-group-vertical">
 				<a href="#" class="btn btn-primary">Sitemap</a>
 				<a href="#" class="btn btn-primary">Liên hệ</a>
 				<a href="#" class="btn btn-primary">English</a>
			</div>
		</div>
	</div>

<nav class="navbar navbar-default">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
				<li><a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span>Trang chủ</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span>Nguyễn Văn A</a></li>
			<li><a href="TrangCaNhan.jsp"><span>Trang cá nhân</span></a></li>
			<li><a href="LoginKPI.jsp"><span class="glyphicon glyphicon-log-out">Thoát</span></a></li>
		</ul>
	</div>
</nav>

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

	<div class="container">
		<h3>Danh sách KPI</h3>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Tên KPI</th>
					<th>Ngày đăng ký</th>
					<th>Chi tiết</th>
					<th>Duyệt</th>
					<th>Nhận xét</th>
					<th>Đánh giá</th>
				</tr>
			</thead>
			<tbody>
			<tr>
				<td>Giảng dạy</td>
				<td>9/9/2016</td>
				<td><a href="ChiTietKPI.jsp">xem</a></td>
				<td><input type="checkbox" name="Duyet" value="Yes"></td>
				<td></td>
				<td><a href="TuDanhgiaKPIGV.jsp">xem</a></td>
			</tr>
			<tr>
				<td>Nghiên cứu khoa học</td>
				<td>8/4/2016</td>
				<td><a href="#">xem</a></td>
				<td><input type="checkbox" name="Duyet" value="Yes"></td>
				<td></td>
				<td><a href="#">xem</a></td>
			</tr>
			<tr>
				<td><h1></h1></td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
			</tr>
			<tr>
				<td><h1></h1></td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
				<td> </td>
			</tr>
			</tbody>
		</table>
	</div>
</body>
</html>