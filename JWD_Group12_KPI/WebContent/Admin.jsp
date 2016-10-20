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
<style type="text/css">
 		thead{
 			background-color: #6600cc;
 			color: white;
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
<body>
	<div class="container" style="padding: 15px">
		<div class="col-md-1 ">
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
			<li><a href="#"><span class="glyphicon glyphicon-user"></span>Nguyễn Văn D</a></li>
			<li><a href="#"><span>Trang cá nhân</span></a></li>
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


		<div class="container">
		<h3>Tài khoản giảng viên</h3>
		<table class="table table-bordered table-striped">
			 <thead>
  		  	<tr class="thead1">  		  	
     		 	<th>#</th>
  		   	 	<th>Tên giảng viên</th>
    		 	<th>Mã giảng viên</th>
    		 	<th>UserID</th>
    		 	<th>Password</th>
    		 	<th>Phân quyền</th>
 	   		</tr>
  		 </thead>
  		 <tbody>
    		<tr>
    			<th scope="row">1</th>
     	 			<td>Nguyễn Văn A</td>
     	 			<td>123</td>
      				<td>NVA123</td>
      				<td>1234ABCD</td>
      				<td>
      				<select class="combobox">
      				<option value="gv">Giảng viên</option>      
      				<option value="tbm">Trưởng bộ môn</option>
      				<option value="tk">Trưởng khoa</option>
      				<option value="bgh">Ban giám hiệu</option>
      				<option value="ptc">Phòng Tổ chức - Cán bộ</option>
      				<option value="ad">Admin</option>
       				</select>
   					</td>
    		</tr>
    		<tr>
    	  		<th scope="row">2</th>
     	 			<td>Nguyễn Văn C</td>
     	 			<td>124</td>
      				<td>NVC124</td>
      				<td>5678XYZ</td>
      				<td>
      				<select class="combobox">
      				<option value="gv">Giảng viên</option>      
      				<option value="tbm">Trưởng bộ môn</option>
      				<option value="tk">Trưởng khoa</option>
      				<option value="bgh">Ban giám hiệu</option>
      				<option value="ptc">Phòng Tổ chức - Cán bộ</option>
      				<option value="ad">Admin</option>
       				</select></td>
    		</tr>	
    		<tr>
    			<td>&nbsp</td>
    			<td>&nbsp</td>
    			<td>&nbsp</td>
    			<td>&nbsp</td>
    			<td>&nbsp</td>
    		</tr>
    		<tr>
    			<td>&nbsp</td>
    			<td>&nbsp</td>
    			<td>&nbsp</td>
    			<td>&nbsp</td>
    			<td>&nbsp</td>
    			<td>&nbsp</td>
    		</tr>    		
  		 </tbody>
		</table>
		<div class="btn1">
		<a href="SignUp.jsp" class="btn btn-primary" style="margin-right: 30px" role="button">Thêm</a>
		<button type="button" class="btn btn-primary" style="margin-right: 30px">Sửa</button>
		<button type="button" class="btn btn-danger">Xóa</button>
		</div>
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
  		  	<tr class="thead1">  		  	
     		 	<th>#</th>
  		   	 	<th>Nhóm mục tiêu</th>
    		 	<th>Thời hạn đăng ký</th>
    		 	<th>Thời hạn duyệt</th>
 	   		</tr>
  		 </thead>
  		 <tbody>
    		<tr>
    				<th scope="row">1</th>
     	 			<td><a href="chitiet.jsp">Giảng dạy</a></td>
     	 			<td><form action="action_page.php"><input type="date" name="bday"></form>
     	 			</td>
      				<td><form action="action_page.php"><input type="date" name="bday"></form></td>
      		</tr>
    		<tr>
    	  		<th scope="row">2</th>
     	 			<td><a href="#">Nghiên cứu khoa học</a></td>
     	 			<td><form action="action_page.php"><input type="date" name="bday"></form></td>
      				<td><form action="action_page.php"><input type="date" name="bday"></form></td>
    		<tr>
    			<td>&nbsp</td>
    			<td>&nbsp</td>
    			<td>&nbsp</td>
    			<td>&nbsp</td>
    		</tr>
    		<tr>
    			<td>&nbsp</td>
    			<td>&nbsp</td>
    			<td>&nbsp</td>
    			<td>&nbsp</td>
    		</tr>
    		
  		 </tbody>
		</table>
	</div>
    </div>
  </div>
</div>



</body>
</html>