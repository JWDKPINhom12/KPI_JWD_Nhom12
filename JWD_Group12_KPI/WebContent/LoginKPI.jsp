<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LOGIN</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
    	#login{
    		margin-top: 60px;
    	}
      h2{
        text-align: center;
        font-size: 50px;
        margin-bottom: 50px;
        font-family: cursive; 
      }
      .container{
        width:800px;
      }
      #lgn-button{
        margin-left: 300px;
      }
      .UsPw{
        font-family: Impact;
        font-size: 15px;
      }
    </style>
  <body>
  	<div class="container" id="login" width>
      <form class="form-signin">
        <h2 class="form-signin-heading">Welcome</h2>
        <div class="radio">          
            <label style="margin-right: 15px">
             <input type="radio" name="content"><a href="Admin.html">Admin</a>
            </label> 
            <label style="margin-right: 15px">
              <input type="radio" name="content"><a href="GiangVien.html">Giảng viên</a>
            </label>
            <label style="margin-right: 15px">
              <input type="radio" name="content"><a href="TruongBoMon.html">Trưởng bộ môn</a>
            </label>            
            <label style="margin-right: 15px">
              <input type="radio" name="content"><a href="TruongKhoa.html">Trưởng khoa</a>
            </label>
            <label style="margin-right: 15px">
              <input type="radio" name="content"><a href="BGH.html">Ban giám hiệu</a>
            </label>
            <label style="margin-right: 15px">
              <input type="radio" name="content"><a href="PTCCB.html">Phòng Tổ chức-Cán bộ</a>
            </label>
        </div>
        <p class="UsPw" style="margin-top: 20px">UserID</p><input type="text" id="inputUser" class="form-control" placeholder="User ID" required autofocus>
        <p class="UsPw" style="margin-top: 10px">Password</p>    
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <div id="lgn-button">
          <a href="#" class="btn btn-lg btn-primary btn-block" type="submit" style="width: 200px" role="button">Sign in</a>
        </div>
      </form>
    </div> <!-- /container -->
  </body>
</html>
