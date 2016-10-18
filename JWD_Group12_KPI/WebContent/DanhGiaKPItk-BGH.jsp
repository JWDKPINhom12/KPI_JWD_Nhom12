<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đánh giá KPI</title>
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
			<li><a href="LoginKPI.jsp"><span class="glyphicon glyphicon-log-out">Thoát</span></a></li>
		</ul>
	</div>
</nav>
<body>
	<div class="container">
		<div class="well" style="width: 15%"><a href="#" class="glyphicon glyphicon-user">Nguyễn Văn A</a></div>
		<h3>Đánh giá</h3>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Mục tiêu</th>
					<th>Điểm KPI tối đa</th>
					<th>Chỉ tiêu đăng ký</th>
					<th>Điểm tự đánh giá</th>
					<th>Điểm cấp trên đánh giá</th>
				</tr>
			</thead>
			<tbody>
			<tr>
				<td>Giảng dạy đủ số tiết/tuần</td>
				<td>40</td>
				<td>120</td>
				<td>40</td>
				<td>40</td>
			</tr>
			<tr>
				<td><h1></h1></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td><h1></h1></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td><h1></h1></td>
				<td> </td>
				<td> </td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td><h1></h1></td>
				<td> </td>
				<td> </td>
				<td></td>
				<td></td>
			</tr>
			</tbody>
		</table>
		<div class="form-group">
			<div>
			 	<label for="comment">Nhận Xét</label>
  				<textarea class="form-control" rows="5" id="comment"></textarea>
			</div>
		</div>
		<a href="BGH.jsp" class="btn btn-success" role="button">Xác Nhận</a>
	</div>
</body>
</html>