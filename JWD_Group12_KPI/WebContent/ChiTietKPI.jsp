<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Chi tiết KPI</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 	<style type="text/css">
 		thead{
 			background-color: #6600cc;
 			color: white;
 		}
 		img{
 			width: 100%;
 			height: auto;
 		}
 		 .site-footer{
 			background-color: #cccccc;
 			margin-top: 30px;
 			padding-bottom: 30px;
 		}
 		.bottom-footer{
 			border-top: 1px solid |
 			margin-top: 10px;
 			padding-top: 20px;
 			color: #000000;
 		}
		#footer{
 			text-align: right;
 			list-style: none;
 		}
 		#footer li{
 			display:inline;
 		}
 		#footer li:not(:first-child):before{
 			content: '|';
 			padding:0px 10px
 		}
 		#footer a{
 			color: #b2b2b2;
 		}
 		#footer a:hover{
 			color: #4d4d4d;
 		}
	</style>
</head>
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
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
				<li><a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span>Trang chủ</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span>Nguyễn Văn A</a></li>
			<li><a href="LoginKPI.jsp"><span class="glyphicon glyphicon-log-out">Thoát</span></a></li>
		</ul>
	</div>
</nav>
<body>
	<div class="container">
		<h3>Chi tiết KPI</h3>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Đăng ký</th>
					<th>Mục tiêu</th>
					<th>Nội dung chi tiết</th>
					<th>Phương pháp</th>
					<th>Nguồn lực</th>
					<th>Thời gian thực hiện</th>
				</tr>
			</thead>
			<tbody>
			<tr>
				<td><input type="checkbox" name="Duyet" value="Yes"></td>
				<td>Giảng dạy đủ số tiết/tuần</td>
				<td>Dạy đủ 120 tiết</td>
				<td>Sắp xếp thời gian hợp lý</td>
				<td>Hiện có</td>
				<td>28/8/2016 - 28/11/2016</td>
			</tr>
			<tr>
				<td><h1></h1></td>
				<td></td>
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
				<td></td>
			</tr>
			<tr>
				<td><h1></h1></td>
				<td> </td>
				<td></td>
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
				<td></td>
			</tr>
			</tbody>
		</table>
		<a href="GiangVien.jsp" class="btn btn-success" onclick="myFunction()" role="button">Xác nhận</a>
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
<script>
function myFunction() {
    alert("Đăng ký thành công!");
}
</script>
</html>