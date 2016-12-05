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
<title>Giảng Viên</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css"  href="css/style.css">
</head>
<body>
<div class="page-wrap">
	    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
	    	    url="jdbc:mysql://localhost/db_kpi"
	    	    user="root"  password="1672538Son"/>

		<sql:query dataSource="${snapshot}" var="result">
						SELECT * from members where uname = <%=session.getAttribute("userid")%>;
		</sql:query>
<div class="header">
	<div class="container" style="padding: 15px">
		<div class="col-md-7 ">
			<div class="logo">
				<img src="img/logo.png" width = "590" height = "135">
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
	</div>
<nav class="navbar navbar-default">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
				<li><a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span>Trang chủ</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
		    <c:forEach var="row" items="${result.rows}">
			<li><a href="#"><span class="glyphicon glyphicon-user"><c:out value="${row.first_name} ${row.last_name}"/></span></a></li>
			</c:forEach>
			<li><a href="TrangCaNhan.jsp"><span>Trang cá nhân</span></a></li>
			<li><a href="LoginKPI.jsp"><span class="glyphicon glyphicon-log-out">Thoát</span></a></li>
		</ul>
	</div>
</nav>

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

		<sql:query dataSource="${snapshot}" var="result">
		SELECT * from dkkpi d1 inner join danhsachbm d2 on d1.makpi=d2.makpi where magv =<%=session.getAttribute("userid")%> ;
		</sql:query>
	<div class="container">
		<h3>Danh sách KPI đăng ký</h3>
		<table class="table table-bordered table-striped">
			<thead>
				<tr align="center">
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
        <c:forEach var="row" items="${result.rows}">
			<tbody>

			<tr align="center">
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
		<a href="ChiTietKPI.jsp" class="btn btn-info" role="button">Đăng ký</a>
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