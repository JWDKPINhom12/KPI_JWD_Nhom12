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
	    String userid = request.getParameter("uname");    
	    String pwd = request.getParameter("pass");
	    String cv = request.getParameter("content");
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_kpi",
	            "root", "1672538Son");
	    Statement st = con.createStatement();
	    ResultSet rs;
	    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "' and chucvu='" + cv + "'");
	    if (rs.next()) {
	        session.setAttribute("userid", userid);
	        //out.println("welcome " + userid);
	        //out.println("<a href='logout.jsp'>Log out</a>");
	        switch (cv){
	        	case "ad":
	        		response.sendRedirect("Admin.jsp");
	        		break;
	        	case "gv":
	        		response.sendRedirect("GiangVien.jsp");
	        		break;
	        	case "tbm":
	        		response.sendRedirect("TruongBoMon.jsp");
	        		break;
	        	case "tk":
	        		response.sendRedirect("TruongKhoa.jsp");
	        		break;
	        	case "bgh":
	        		response.sendRedirect("BGH.jsp");
	        		break;
	        	case "ptc":
	        		response.sendRedirect("PTCCB.jsp");
	        		break;
	        }
	    } else {
	        out.println("Invalid password <a href='LoginKPI.jsp'>try again</a>");
	    }
	%>
</body>
</html>