<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Chi tiết</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
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
          <tr class="thead1">         
          <th>#</th>
            <th>Mục tiêu</th>
          <th>Nội dung chi tiết</th>
          <th>Thời gian bắt đầu</th>
          <th>Thời gian kết thúc</th>
        </tr>
       </thead>
       <tbody>
        <tr>
          <th scope="row">1</th>
            <td>Dạy đủ số tiết/tuần</td>
            <td>Dạy đủ 120 tiết</td>
            <td><form action="action_page.php"><input type="date" name="bday"></form>
            </td>
              <td><form action="action_page.php"><input type="date" name="bday"></form></td>
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
        </tr>        
       </tbody>
    </table>
    <div class="btn1">
    <button type="button" class="btn btn-primary" style="margin-right: 30px">Thêm</button>
    <button type="button" class="btn btn-primary" style="margin-right: 30px">Sửa</button>
    <button type="button" class="btn btn-danger">Xóa</button>
    </div>
  </div>
</body>
</html>