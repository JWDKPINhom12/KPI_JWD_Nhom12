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
		    
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_kpi?characterEncoding=UTF-8",
	            "root", "1672538Son");
	    Statement st = con.createStatement();
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
	    //ResultSet rs;    
	    try{
        	int i = st.executeUpdate("update members set first_name = '"+ fn +"', last_name = '"+ ln +"', pass = '"+ pwd +"', gioitinh = '"+ gt +"', chucvu = '"+ cv +"', khoa = '"+ khoa +"', email = '"+ email +"', diachi = '"+ dc +"', sdt = '"+ sdt +"' where uname = '"+ user +"'");
        	
	    	if (i > 0) {
	      	  out.print("Update Successfull!"+"<a href='Admin.jsp'>Go back</a>");
	      	
	  	  } 
	    	else {
	    		out.print("Update Fail!"+"<a href='Admin.jsp'>Go back</a>");	        
	   	}
	}
	catch (Exception e){
		out.println("An exception occurred: " + e.getMessage());
		
	}
	%>
</body>
</html>