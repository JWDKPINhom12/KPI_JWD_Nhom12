<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>LOGIN</title>
    <style type="text/css">
      body{
        background-color: #34495e;
      }
    	#login{
    		margin-top: 150px;
    	}
      .panel-default{
        border: none;
      }
      .panel-default .panel-heading{
        background-color: #2c3e50;
        color: white;
      }
      h2{
        text-align: center;
        font-size: 50px;
        margin-bottom: 30px;
        font-family: cursive; 
     
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
      <div class="row">
        <div class="col-md-9 col-md-offset-2">
          <div class="panel panel-default">
            <div class="panel-heading">
                <h2 class="form-signin-heading">Welcome</h2>
            </div>
          <div class="panel-body">
              <div class="radio">   
                <form id="form-login" action="" method="POST" role="form">       
                  <label style="margin-right: 15px">
                   <input type="radio" name="content" id="1"><a href="Admin.jsp">Admin</a>
                  </label> 
                  <label style="margin-right: 15px">
                    <input type="radio" name="content" id="2"><a href="GiangVien.jsp">Giảng viên</a>
                  </label>
                  <label style="margin-right: 15px">
                    <input type="radio" name="content" id="3"><a href="TruongBoMon.jsp">Trưởng bộ môn</a>
                  </label>            
                  <label style="margin-right: 15px">
                    <input type="radio" name="content" id="4"><a href="TruongKhoa.jsp">Trưởng khoa</a>
                  </label>
                  <label style="margin-right: 15px">
                    <input type="radio" name="content" id="5"><a href="BGH.jsp">Ban giám hiệu</a>
                  </label>
                  <label style="margin-right: 15px">
                    <input type="radio" name="content" id="6"><a href="PTCCB.jsp">Phòng Tổ chức-Cán bộ</a>
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
                  <button class="btn btn-lg btn-primary btn-block" type="submit" style="width: 200px">Sign in</button>
                </div>
              </form>
          </div>
        </div>
      </div>
      </div>
    </div> <!-- /container -->   
  </body>
  
  <script type="text/javascript">
    var CORRECT_USER = "admin1";
    var CORRECT_PASS = "123";

    var inputUser = document.getElementById("inputUser");
    var inputPassword = document.getElementById("inputPassword");
    var formLogin = document.getElementById("form-login")

    if (formLogin.attachEvent) {
      formLogin.attachEvent("submit",onFormSubmit);
    }else{
      formLogin.addEventListener("submit", onFormSubmit);
    }

    function onFormSubmit(e){
      if (e.preventDefault) e.preventDefault();

      var username = inputUser.value;
      var password = inputPassword.value;
      if (username == CORRECT_USER && password == CORRECT_PASS) {
        alert("Đăng nhập thành công!");
          window.location = "Admin.jsp"
        
      }else{
        alert("Sai tên tài khoản hoặc mật khẩu!");
      }
      return false;
    }
          

  </script>

</html>