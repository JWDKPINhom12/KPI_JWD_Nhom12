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
<title>Phân công công việc</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css"  href="css/style.css">
</head>
<body>
	    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
	    	    url="jdbc:mysql://localhost/db_kpi"
	    	    user="root"  password="1672538Son"/>
		<sql:query dataSource="${snapshot}" var="result">
						SELECT * from members where uname = <%=session.getAttribute("userid")%>;
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
			<li><a href="#"><span>Trang cá nhân</span></a></li>
			<li><a href="LoginKPI.jsp"><span class="glyphicon glyphicon-log-out">Thoát</span></a></li>
		</ul>
	</div>
</nav>

		<sql:query dataSource="${snapshot}" var="result">
				SELECT * from members;
		</sql:query>
	<form name="addup" method="post" class="form-horizontal" action="addcvptc.jsp" role="form">
<div class="container">
	<div class="form-group">
		<div class="col-md-10">
			<label for="usr">Tên công việc</label>
 			<input type="text" class="form-control" name="td">
		</div>
	</div>
	<div class="form-group">
		<div class="col-md-10">
			 	<label for="comment">Nội dung công việc</label>
  				<textarea class="form-control" rows="5" name="nd"></textarea>
		</div>
	</div>
</div>

<div class="container">
		<h3>Danh sách phân công</h3>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Mã giảng viên</th>
					<th>Tên giảng viên</th>
					<th>Chức vụ</th>
					<th>Phân công</th>
				</tr>
			</thead>
			<c:forEach var="row" items="${result.rows}">
			<tbody>
			<tr>
				<td><c:out value="${row.uname}"/></td>
				<td><c:out value="${row.first_name} ${row.last_name}"/></td>
				<td><c:out value="${row.chucvu}"/></td>
				<td><input type="radio" name="dk" value="${row.uname}"></td>
			</tr>
			</tbody>
			</c:forEach>
		</table>
		<button type="submit" class="btn btn-primary">Xác nhận</button>
		<a href="PTCCB.jsp" class="btn btn-warning" role="button">Hủy</a>
	</div>
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

</body>
</html>