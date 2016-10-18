<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang cá nhân</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<div class="container">
	<div class="page-header">
	<h2 style="text-align: center;">TRƯỜNG ĐẠI HỌC SƯ PHẠM KỸ THUẬT TP. HỒ CHÍ MINH</h2>
	<h6 style="text-align: center;">Địa chỉ: số 1 Võ Văn Ngân, Quận Thủ Đức, TP HCM. - Điện thoại: (84-8) 37221223</h6>
	<h6 style="text-align: center;">Email: p.cthssv@hcmute.edu.vn - Website: www.hcmute.edu.vn</h6>
	</div>
</div>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
				<li><a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span>Trang chủ</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span>Nguyễn Văn A</a></li>
			<li><a href="LoginKPI.html"><span class="glyphicon glyphicon-log-out">Thoát</span></a></li>
		</ul>
	</div>
</nav>
<body>
	<div class="container">
		<h3>Thông báo</h3>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th></th>
					<th>Tiêu để</th>
					<th>Người gửi</th>
					<th>Thời gian gửi</th>
				</tr>
			</thead>
			<tbody>
			<tr>
				<td><span class="glyphicon glyphicon-envelope"></span></td>
				<td><a href="#">Danh sách KPI chờ duyệt</a></td>
				<td>Admin</td>
				<td>12/11/2016</td>
			</tr>
			<tr>
				<td><span class="glyphicon glyphicon-envelope"></span></td>
				<td><a href="#">Đánh giá KPI</a></td>
				<td>Admin</td>
				<td>10/11/2016</td>
			</tr>
			<tr>
				<td><span class="glyphicon glyphicon-envelope"></span></td>
				<td><a href="#">Họp khoa</a></td>
				<td>Trưởng khoa</td>
				<td>9/11/2016</td>
			</tr>
			<tr>
				<td><h1></h1></td>
				<td> </td>
				<td> </td>
				<td></td>
			</tr>
			<tr>
				<td><h1></h1></td>
				<td> </td>
				<td> </td>
				<td></td>
			</tr>
			</tbody>
		</table>
	</div>
	<div class="container">
		<h3>Thông tin cá nhân</h3>
		<table class="table table-bordered table-striped" style="width: 40%">
			<thead>
				<tr>
					<th></th>
				</tr>
			</thead>
		<tbody>
			<td>
				<h1><span class="glyphicon glyphicon-user"></span></h1>
				<li>Mã số: 123</li>
				<li>Tên: Nguyễn Văn A</li>
				<li>Khoa: CNTT</li>
				<li>Ngày sinh: dd/mm/yyyy</li>
				<li>Giới tính: Nam</li>
				<li>Nơi sinh: xxx</li>
				<li>Email: Nguyenvana@gmail.com</li>
			</td>
		</tbody>
		</table>
	</div>
</body>
</html>