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
<title>Chi tiết</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css"  href="css/style.css">  
  
  <link href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>


  
<script type="text/javascript">
	$(function() {
	$("#Date1").datepicker({ dateFormat: 'yy-mm-dd' });
	});
</script>  
  
<script type="text/javascript">
	$(function() {
	$("#Date2").datepicker({ dateFormat: 'yy-mm-dd' });
	});
</script>
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
      <li><a href="LoginKPI.jsp"><span class="glyphicon glyphicon-log-out">Thoát</span></a></li>
    </ul>
  </div>
</nav>

		<sql:query dataSource="${snapshot}" var="result">
		SELECT * from danhsachbm;
		</sql:query>
		
  <div class="container">
  <form method="post" class="form-horizontal" action="Addbm.jsp" role="form">
    <h3>Chi tiết KPI</h3>
    <table class="table table-bordered table-striped">
      <thead>
          <tr class="thead1">         
          <th>Mã kpi</th>
          <th>Mục tiêu</th>
          <th>Nội dung chi tiết</th>
          <th>Thời gian bắt đầu</th>
          <th>Thời gian kết thúc</th>
          <th>Chỉ tiêu đăng ký</th>
          <th>Điểm KPI max</th>
        </tr>
       </thead>

       <tbody>
        <tr>
          	<td><input name="makpi" type="text" class="form-control input-md"></td>
            <td><input name="muctieu" type="text" class="form-control input-md"></td>
            <td><input name="noidung" type="text" class="form-control input-md"></td>
            <td><input type="text" name="tgbd" id="Date1"></td>
            <td><input type="text" name="tgkt" id="Date2"></td>
            <td><input name="ctdk" type="text" class="form-control input-md"></td>
            <td><input name="dkpimax" type="text" class="form-control input-md"></td>
          </tr>
        <c:forEach var="row" items="${result.rows}">
        <tr>
          <td><c:out value="${row.makpi}"/></td>
          <td><c:out value="${row.muctieu}"/></td>
          <td><c:out value="${row.noidung}"/></td>
          <td><c:out value="${row.tgbd}"/></td>
          <td><c:out value="${row.tgkt}"/></td>
          <td><c:out value="${row.ctdk}"/></td>
          <td><c:out value="${row.dkpimax}"/></td>
        </tr>    
       </tbody>
       </c:forEach>
    </table>
    <div class="btn1">
    <button type="submit" class="btn btn-primary" style="margin-right: 30px">Thêm</button>
    <button type="button" class="btn btn-primary" style="margin-right: 30px">Sửa</button>
    <button type="button" class="btn btn-danger">Xóa</button>
    </div>
    </form>
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