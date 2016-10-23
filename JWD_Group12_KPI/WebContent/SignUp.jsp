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
<form method="post" class="form-horizontal" id="signup" action="" role="form">
<fieldset>
<legend>Sign Up</legend>
<div class="form-group">
  <label class="col-md-4 control-label" for="fn">Họ</label>  
  <div class="col-md-4">
  <input id="fn" name="fn" type="text" placeholder="Họ" class="form-control input-md">    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="ln">Tên</label>  
  <div class="col-md-4">
  <input id="ln" name="ln" type="text" placeholder="Tên" class="form-control input-md">    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="Gender">Giới tính</label>
  <div class="col-md-4"> 
    <label class="radio-inline" for="Gender-0">
      <input type="radio" name="Gender" id="Gender-0" value="male" checked="checked">
      Nam
    </label> 
    <label class="radio-inline" for="Gender-1">
      <input type="radio" name="Gender" id="Gender-1" value="female">
      Nữ
    </label>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="cmpny">Chức vụ</label>  
  <div class="col-md-4">
       				<select class="form-control" style="margin-top: 7px">
      				<option value="gv">Giảng viên</option>      
      				<option value="tbm">Trưởng bộ môn</option>
      				<option value="tk">Trưởng khoa</option>
      				<option value="bgh">Ban giám hiệu</option>
      				<option value="ptc">Phòng Tổ chức - Cán bộ</option>
      				<option value="ad">Admin</option>
       				</select>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="add1">Khoa</label>  
  <div class="col-md-4">
       				<select class="form-control" style="margin-top: 7px">
      				<option value="gv">Công nghệ thông tin</option>    
      				<option value="tbm">Cơ khí chế tạo máy</option>
      				<option value="tk">Cơ khí động lưc</option>
      				<option value="bgh">Điện - Điện tử</option>			
      				<option value="ad">...</option>
       				</select>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="email">Email</label>  
  <div class="col-md-4">
  <input id="email" name="email" type="text" placeholder="Email" class="form-control input-md">
  <span id="helpBlock" class="help-block">Ex: email@example.com</span>    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="add">Địa chỉ</label>  
  <div class="col-md-4">
  <input id="add" name="add" type="text" placeholder="Địa chỉ" class="form-control input-md">    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="sdt">Số điện thoại</label>  
  <div class="col-md-4">
  <input id="sdt" name="sdt" type="text" placeholder="SĐT" class="form-control input-md">    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="submit"></label>
  <div class="col-md-4">
    <button type ="submit" id="submit" class="btn btn-primary">Xác nhận</button>    
    <button type ="button" id="cancel" class="btn btn-danger">Hủy</button>
  </div>
</div>
</fieldset>
</form>
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

<script>

function validateText(id){
	if($("#"+id).val()==null || $("#"+id).val()=="")
	{
		var div = $("#"+id).closest("div");
		div.removeClass("has-success");
		$("#glypcn"+id).remove();
		div.addClass("has-error has-feedback");
		div.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-remove form-control-feedback"></span>')
		return false;
	}
	else
	{
		var div = $("#"+id).closest("div");
		div.removeClass("has-error");
		div.addClass("has-success has-feedback");
		$("#glypcn"+id).remove();
		div.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-ok form-control-feedback"></span>')
		return true;
	}
}

$(document).ready(
		function(){
			$("#submit").click(function()
			{
				if(!validateText("fn"))
				{
					return false;
				}
				if(!validateText("ln"))
				{
					return false;
				}
				if(!validateText("email"))
				{
					return false;
				}
				if(!validateText("add"))
				{
					return false;
				}
				if(!validateText("sdt"))
				{
					return false;
				}
			});
		}
		)
</script>
</body>
</html>