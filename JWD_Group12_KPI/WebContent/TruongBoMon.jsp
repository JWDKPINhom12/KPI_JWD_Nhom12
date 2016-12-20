<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trưởng bộ môn</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css"  href="css/style.css">
	
	<meta name="viewport" content="width=device-width,initial-scale=1">
   <link rel="shortcut icon" type="image/png" href="/media/images/favicon.png">
   <link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://www.datatables.net/rss.xml">
   <link rel="stylesheet" type="text/css" href="/media/css/site-examples.css?_=b05357026107a2e3ca397f642d976192">
   <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css">
   <script type="text/javascript" async="" src="https://ssl.google-analytics.com/ga.js"></script><script type="text/javascript" src="/media/js/site.js?_=9a83ad61fa12260d710e54eb5f3203dc"></script>
   <script type="text/javascript" src="/media/js/dynamic.php?comments-page=examples%2Fstyling%2Fbootstrap.html" async=""></script>
   <script type="text/javascript" language="javascript" src="//code.jquery.com/jquery-1.12.4.js"></script>
   <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
   <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
   <script type="text/javascript" language="javascript" src="../resources/demo.js"></script>
   <script type="text/javascript" class="init">
      $(document).ready(function() {
      	$('#example').DataTable();
      } );
      
      	
   </script>
     <script type="text/javascript" class="init">
      $(document).ready(function() {
      	$('#example2').DataTable();
      } );
      
      	
   </script>
</head>
<body>
	     <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
	    	    url="jdbc:mysql://localhost:3306/db_kpi"
	    	    user="root"  password="1672538Son"/>
	    	    
	    	   	<sql:query dataSource="${snapshot}" var="result">
				SELECT *
				from members
				where uname =<%=session.getAttribute("userid") %>;
			</sql:query>
<div class="page-wrap">
	<div class="header">
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
	</div></div>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
				<li><a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span>Trang chủ</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
		    <c:forEach var="row" items="${result.rows}">
			<li><a href="#"><span class="glyphicon glyphicon-user"><c:out value="${row.first_name} ${row.last_name}"/></span></a></li>
			</c:forEach>
			<li><a href="TrangCaNhantbm.jsp"><span>Trang cá nhân</span></a></li>
			<li><a href="LoginKPI.jsp"><span class="glyphicon glyphicon-log-out">Thoát</span></a></li>
		</ul>
	</div>
</nav>

	<div class="container">
 		<ul class="nav nav-tabs">
  			<li class="active"><a data-toggle="pill" href="#kpigv">KPI Giảng viên</a></li>
  			<li><a data-toggle="pill" href="#kpicn">KPI cá nhân</a></li>
  		 	<li ><a data-toggle="pill" href="#pccv">Phân công công việc</a></li>
 		</ul>
	<div class="tab-content">
		   	<div id="kpigv" class="tab-pane fade in active">
			
				<sql:query dataSource="${snapshot}" var="result1">
										SELECT uname,first_name,last_name,duyet,d2.makpi
										 from members d1 join dkkpi d2 on d1.uname=d2.magv
										 where uname <> <%=session.getAttribute("userid")%>;
					</sql:query>
				<div class="container">
				<h3>KPI Giảng Viên</h3>
				 <table id="example" class="table table-striped table-bordered dataTable" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
					<thead>
						<tr>
							<th>Mã giảng viên</th>
							<th>Tên giảng viên</th>
							<th>Chi tiết</th>
							<th>Duyệt</th>
							<th>Đánh giá</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="row" items="${result1.rows}">
					<tr>
						<td><c:out value="${row.uname}"/></td>
						<td><c:out value="${row.first_name} ${row.last_name}"/></td>
						<td><a href="ChiTietKPIgv-TBM.jsp?kpi=${row.makpi}&id=${row.uname}">xem</a></td>
						<td><span class="${row.duyet}"></span></td>
						<td><a href="DanhGiaKPIgv-TBM.jsp?kpi=${row.makpi}&id=${row.uname}">xem</a></td>
					</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>


	   	<div id="kpicn" class="tab-pane fade">
			
		<sql:query dataSource="${snapshot}" var="result2">
					SELECT d1.makpi,muctieu,noidung,tgbd,tgkt,dkpimax,dtdg,dctdg,nx,duyet,ctdk
					 from dkkpi d1 inner join danhsachbm d2 on d1.makpi=d2.makpi
					 where magv =<%=session.getAttribute("userid")%> ;
			</sql:query>
		<div class="container">
			<h3>Danh sách KPI đăng ký</h3>
		<form action="updiemtbm.jsp" method="post">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th></th>
						<th>Mã KPI</th>
						<th>Mục tiêu</th>
						<th>Nội dung chi tiết</th>
						<th>Thời gian thực hiện</th>
						<th>Chỉ tiêu đăng ký</th>
						<th>Duyệt</th>
						<th>Điểm KPI max</th>
						<th>Điểm tự đánh giá</th>
						<th>Điểm cấp trên đánh giá</th>
						<th>Nhận xét</th>
					</tr>
				</thead>
	        <c:forEach var="row" items="${result2.rows}">
				<tbody>
	
				<tr>
					<td><input type="radio" name="dk" value="${row.makpi}"></td>
					<td><c:out value="${row.makpi}"/></td>
					<td><c:out value="${row.muctieu}"/></td>
					<td><c:out value="${row.noidung}"/></a></td>
					<td><c:out value="${row.tgbd} : ${row.tgkt}"/></td>
					<td><c:out value="${row.ctdk}"/></td>
					<td><span class="${row.duyet}"></span></td>
					<td><c:out value="${row.dkpimax}"/></td>
					<td><c:out value="${row.dtdg}"/></td>
					<td><c:out value="${row.dctdg}"/></td>
					<td><c:out value="${row.nx}"/></td>
				</tr>
				
				</tbody>
				</c:forEach>
			</table>
			 	<div class="form-group">
			<div>
			 	<label for="comment">Điểm tự đánh giá</label>
 				<input name="dtdg" type="text" class="form-control input-md" style="width: 15%">
			</div>
			</div>
			<button type="submit" class="btn btn-success" >Xác nhận</button>
			
			<a href="dkkpitbm.jsp" class="btn btn-info" role="button">Đăng ký</a>
			
		</form>
</div>
</div>
    <div id="pccv" class="tab-pane fade">
		<sql:query dataSource="${snapshot}" var="result3">
				SELECT * from pccv p inner join members m on p.magv=m.uname where chucvu = "gv";
		</sql:query>
	<div class="container">
		<h3>Phân công</h3>
		 <table id="example2" class="table table-striped table-bordered dataTable" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
			<thead>
				<tr>
					<th class="sorting">Mã giảng viên</th>
					<th class="sorting">Tên công việc</th>
					<th class="sorting">Công việc</th>
					<th class="sorting">Nội dung</th>
					<th class="sorting">Ngày phân công</th>
				</tr>
			</thead>
			
			<tbody>
			<c:forEach var="row" items="${result3.rows}">
				<tr>
					<td><c:out value="${row.magv}"/></td>
					<td><c:out value="${row.first_name} ${row.last_name}"/></td>
					<td><c:out value="${row.tieude}"/></td>
					<td><c:out value="${row.nd}"/></td>
					<td><c:out value="${row.regdate}"/></td>
				</tr>
			</c:forEach>
			</tbody>
		
		</table>
	</div>
	<a href="PhanCongcv-TBM.jsp" class="btn btn-primary" role="button">Thêm công việc</a>
    </div>

</div>
</div>
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
</html>