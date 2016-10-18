<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thông tin tài khoản</title>
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
			<li><a href="#"><span class="glyphicon glyphicon-user"></span>Nguyễn Văn A</a></li>
			<li><a href="LoginKPI.jsp"><span class="glyphicon glyphicon-log-out">Thoát</span></a></li>
		</ul>
	</div>
</nav>
<body>
	<div class="container">
		<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>Form Name</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="fn">Họ</label>  
  <div class="col-md-4">
  <input id="fn" name="fn" type="text" placeholder="Họ" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Tên</label>  
  <div class="col-md-4">
  <input id="ln" name="ln" type="text" placeholder="Tên" class="form-control input-md" required="">
    
  </div>
</div>
<!--Sex radio button-->
<div class="form-group">
  <label class="col-md-4 control-label" for="Training">Giới tính</label>
  <div class="col-md-4"> 
    <label class="radio-inline" for="Training-0">
      <input type="radio" name="Training" id="Training-0" value="yes" checked="checked">
      Nam
    </label> 
    <label class="radio-inline" for="Training-1">
      <input type="radio" name="Training" id="Training-1" value="no">
      Nữ
    </label>
  </div>
</div>

<!-- Text input--><!--RIGHT HERE-->
<div class="form-group">
  <label class="col-md-4 control-label" for="cmpny">Chức vụ</label>  
  <div class="col-md-4">
       				<select class="combobox" style="margin-top: 7px">
      				<option value="gv">Giảng viên</option>      
      				<option value="tbm">Trưởng bộ môn</option>
      				<option value="tk">Trưởng khoa</option>
      				<option value="bgh">Ban giám hiệu</option>
      				<option value="ptc">Phòng Tổ chức - Cán bộ</option>
      				<option value="ad">Admin</option>
       				</select>
    
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="add1">Khoa</label>  
  <div class="col-md-4">
       				<select class="combobox" style="margin-top: 7px">
      				<option value="gv">Công nghệ thông tin</option>    
      				<option value="tbm">Cơ khí chế tạo máy</option>
      				<option value="tk">Cơ khí động lưc</option>
      				<option value="bgh">Điện - Điện tử</option>			
      				<option value="ad">...</option>
       				</select>
    
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email">Email</label>  
  <div class="col-md-4">
  <input id="email" name="email" type="text" placeholder="Email" class="form-control input-md" required="">
    
  </div>
</div>



<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="add2">Địa chỉ</label>  
  <div class="col-md-4">
  <input id="add2" name="add2" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="city">Số điện thoại</label>  
  <div class="col-md-4">
  <input id="city" name="city" type="text" class="form-control input-md" required="">
    
  </div>
</div>
<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button id="submit" name="submit" class="btn btn-primary">Xác nhận</button>    
    <button id="cancel" name="submit" class="btn btn-danger">Hủy</button>
  </div>
</div>
</fieldset>
</form>
	</div>
</body>
</html>