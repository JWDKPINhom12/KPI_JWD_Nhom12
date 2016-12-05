<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import ="java.sql.*" %>
	<%
		request.setCharacterEncoding("UTF-8");
	 	String user = request.getParameter("uname");    
	   	String pwd = request.getParameter("pass");
	    String fn = request.getParameter("fn");
	    String ln = request.getParameter("ln");
	    String gt = request.getParameter("Gender");
	    String cv = request.getParameter("cmpny");
	    String khoa = request.getParameter("add1");
	    String email = request.getParameter("email");
	    String dc = request.getParameter("add");
	    String sdt = request.getParameter("sdt");
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_kpi",
	            "root", "1672538Son");
	    Statement st = con.createStatement();
	    //ResultSet rs;
	    int i = st.executeUpdate("insert into members(first_name, last_name, gioitinh, chucvu, khoa, email, diachi, sdt, uname, pass, regdate) values ('" + fn + "','" + ln + "', '" + gt + "', '" + cv + "', '" + khoa + "', '" + email + "','" + dc + "','" + sdt + "', '" + user + "', '" + pwd + "', CURDATE())");
	    if (i > 0) {
	        out.print("Registration Successfull!"+"<a href='SignUp.jsp'>Go back</a>");
      		//response.sendRedirect("SignUp.jsp");
	    } else {
	        out.print("Registration fail!"+"<a href='SignUp.jsp'>Go back</a>");
	       // response.sendRedirect("SignUp.jsp");
	    }
	%>
</body>
</html>