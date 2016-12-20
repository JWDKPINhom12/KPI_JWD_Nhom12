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
<title>Administrator</title>
	
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
      	$('#fix').click(function(){
      		var c = "SuaMember.jsp?x=" + $('input[name=dk]:checked').val();
      		$(this).attr('href',c);
      		window.location.replace(c);
      	});
      	$('#fix2').click(function(){
      		var c = "SuaBM.jsp?y=" + $('input[name=makpiradio]:checked').val();
      		$(this).attr('href',c);
      		window.location.replace(c);
      	});
      } );
      	
   </script>
     <script type="text/javascript" class="init">
      $(document).ready(function() {
      	$('#example2').DataTable();
      } );
      
      	
   </script>
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
<script>
function generateReportU(){
   document.forms['adddel'].action = 'SuaBM.jsp';
   document.forms['adddel'].submit();
}
function generateReportD(){
	   document.forms['adddel'].action = 'Delbm.jsp';
	   document.forms['adddel'].submit();
	}
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
			<li><a href="TrangCaNhanad.jsp"><span>Trang cá nhân</span></a></li>
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
		
  <form method="post" class="form-horizontal" action="DelMember.jsp" role="form">

		<sql:query dataSource="${snapshot}" var="result">
		SELECT first_name, last_name, uname, pass, chucvu from members;
		</sql:query>

		<div class="container">
		<h3>Tài khoản giảng viên</h3>
		<table id="example" class="table table-striped table-bordered dataTable" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
			 <thead>
  		  	<tr class="thead1">  		  	
  		   	 	<th>Tên giảng viên</th>
    		 	<th>Mã giảng viên</th>
    		 	<th>Password</th>
    		 	<th>Phân quyền</th>
    		 	<th>Chọn</th>
 	   		</tr>
  		 	</thead>
  		 	<tbody>
  		 	<c:forEach var="row" items="${result.rows}">
  		 
    		<tr>
     	 			<td><c:out value="${row.first_name} ${row.last_name}"/></td>
      				<td><c:out value="${row.uname}"/></td>
      				<td><c:out value="${row.pass}"/></td>
      				<td><c:out value="${row.chucvu}"/></td>
      				<td><input type="radio" class="SuaMB" name="dk" value="${row.uname}"></td>
    		</tr>
	
  	
  		 </c:forEach>
  		 	 </tbody>
		</table>
		<div class="btn1">
		<a href="SignUp.jsp" class="btn btn-primary" style="margin-right: 30px" role="button">Thêm</a>
		<a href="#" id="fix" class="btn btn-primary" style="margin-right: 30px" role="button">Sửa</a>
		<button type="submit" class="btn btn-danger">Xóa</button>
		</div>
	</div>
  </form>

    </div>
    <div id="pccv" class="tab-pane fade">

		


		<sql:query dataSource="${snapshot}" var="result">
		SELECT * from danhsachbm;
		</sql:query>
		
  <div class="container">
  <form name="adddel" method="post" class="form-horizontal" action="Delbm.jsp" role="form">
    <h3>Chi tiết KPI</h3>
    <table id="example2" class="table table-striped table-bordered dataTable" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
      <thead>
          <tr class="thead1">         
          <th>Mã kpi</th>
          <th>Mục tiêu</th>
          <th>Nội dung chi tiết</th>
          <th>Thời gian bắt đầu</th>
          <th>Thời gian kết thúc</th>
          <th>Chỉ tiêu đăng ký</th>
          <th>Điểm KPI max</th>
          <th>Chọn</th>
        </tr>
       </thead>

       <tbody>
        
        <c:forEach var="row" items="${result.rows}">
        <tr>
          <td><c:out value="${row.makpi}"/></td>
          <td><c:out value="${row.muctieu}"/></td>
          <td><c:out value="${row.noidung}"/></td>
          <td><c:out value="${row.tgbd}"/></td>
          <td><c:out value="${row.tgkt}"/></td>
          <td><c:out value="${row.ctdk}"/></td>
          <td><c:out value="${row.dkpimax}"/></td>
          <td><input type="radio" name="makpiradio" value="${row.makpi}"></td>
        </tr>          
       </c:forEach>
      </tbody>
    </table>
    
    <div class="btn1">
    <a href="ThemBM.jsp" class="btn btn-primary" style="margin-right: 30px" role="button">Thêm</a>
    <a href="SuaBM.jsp" id = "fix2" name="update_btn" class="btn btn-primary" style="margin-right: 30px" role="button">Sửa</a>
    <button type="submit" name="delete_btn" class="btn btn-danger">Xóa</button>   
    </div>
    </form>
  </div>  
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