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
			<li><a href="#"><span class="glyphicon glyphicon-user"></span>Nguyễn Văn D</a></li>
			<li><a href="#"><span>Trang cá nhân</span></a></li>
			<li><a href="LoginKPI.html"><span class="glyphicon glyphicon-log-out">Thoát</span></a></li>
		</ul>
	</div>
</nav>
<body>
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
							<input type="text" class="form-control" name="search" id="search" placeholder="search">
							<span class="glyphicon glyphicon-search form-control-feedback"></span>
						</div>
					</form>
				</div>
			</div>
		</div>


		<div class="container">
		<h3>KPI Giảng Viên</h3>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Mã giảng viên</th>
					<th>Tên giảng viên</th>
					<th>Tên KPI</th>
					<th>Ngày duyệt</th>
					<th>Chi tiết</th>
					<th>Đánh giá</th>
				</tr>
			</thead>
			<tbody>
			<tr>
				<td>123</td>
				<td>Nguyễn Văn A</td>
				<td>KPI1</td>
				<td>9/9/2016</td>
				<td><a href="#">xem</a></td>
				<td><a href="#">xem</a></td>
			</tr>
			<tr>
				<td>456</td>
				<td>Trần Thị B</td>
				<td>KPI2</td>
				<td>8/4/2016</td>
				<td><a href="#">xem</a></td>
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


		<div class="container">
		<h3>KPI Trưởng Khoa</h3>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Mã giảng viên</th>
					<th>Tên giảng viên</th>
					<th>Khoa</th>
					<th>Tên KPI</th>
					<th>Ngày duyệt</th>
					<th>Chi tiết</th>
					<th>Đánh giá</th>
				</tr>
			</thead>
			<tbody>
			<tr>
				<td>123</td>
				<td>Nguyễn Văn A</td>
				<td>CNTT</td>
				<td>KPI1</td>
				<td>9/9/2016</td>
				<td><a href="ChiTietKPItk-BGH.html">xem</a></td>
				<td><a href="DanhGiaKPItk-BGH.html">xem</a></td>
			</tr>
			<tr>
				<td>456</td>
				<td>Trần Thị B</td>
				<td>Điện</td>
				<td>KPI2</td>
				<td>8/4/2016</td>
				<td><a href="#">xem</a></td>
				<td><a href="#">xem</a></td>
			</tr>
			<tr>
				<td><h1></h1></td>
				<td> </td>
				<td> </td>
				<td></td>
				<td> </td>
				<td> </td>
				<td> </td>
			</tr>
			<tr>
				<td><h1></h1></td>
				<td> </td>
				<td> </td>
				<td></td>
				<td> </td>
				<td> </td>
				<td> </td>
			</tr>
			</tbody>
		</table>
	</div>


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

	<div class="container">
		<h3>Phân công</h3>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Mã giảng viên</th>
					<th>Tên giảng viên</th>
					<th>Khoa</th>
					<th>Tên công việc</th>
					<th>Ngày phân công</th>
					<th>Chi tiết</th>
				</tr>
			</thead>
			<tbody>
			<tr>
				<td>123</td>
				<td>Nguyễn Văn A</td>
				<td>CNTT</td>
				<td>CV1</td>
				<td>9/9/2016</td>
				<td><a href="#">xem</a></td>
			</tr>
			<tr>
				<td>456</td>
				<td>Trần Thị B</td>
				<td>Điện</td>
				<td>CV2</td>
				<td>8/4/2016</td>
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
	<a href="PhanCongcv-BGH.html" class="btn btn-primary" role="button">Thêm công việc</a>
    </div>
  </div>
</div>



</body>
</html>