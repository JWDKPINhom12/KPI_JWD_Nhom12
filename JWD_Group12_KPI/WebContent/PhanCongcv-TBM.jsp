<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Phân công công việc</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
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
			<li><a href="#"><span class="glyphicon glyphicon-user"></span>Nguyễn Văn D</a></li>
			<li><a href="#"><span>Trang cá nhân</span></a></li>
			<li><a href="LoginKPI.jsp"><span class="glyphicon glyphicon-log-out">Thoát</span></a></li>
		</ul>
	</div>
</nav>
<body>
<div class="container">
	<div class="form-group">
		<div class="col-md-10">
			<label for="usr">Tên công việc</label>
 			<input type="text" class="form-control" id="usr">
		</div>
	</div>
	<div class="form-group">
		<div class="col-md-10">
			 	<label for="comment">Nội dung công việc</label>
  				<textarea class="form-control" rows="5" id="comment"></textarea>
		</div>
	</div>
</div>

<div class="container">
		<h3>Danh sách phân công</h3>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Mã giảng viên</th>
					<th>Tên giảng viên</th>
					<th>Phân công</th>
				</tr>
			</thead>
			<tbody>
			<tr>
				<td>123</td>
				<td>Nguyễn Văn A</td>
				<td><input type="checkbox" name=""></td>
			</tr>
			<tr>
				<td>456</td>
				<td>Trần Thị B</td>
				<td><input type="checkbox" name=""></td>
			</tr>
			<tr>
				<td><h1></h1></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td><h1></h1></td>
				<td> </td>
				<td></td>
			</tr>
			</tbody>
		</table>
		<a href="TruongBoMon.jsp" class="btn btn-success" role="button">Xác nhận</a>
	</div>


</body>
</html>