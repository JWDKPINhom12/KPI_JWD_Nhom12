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
	try{
		request.setCharacterEncoding("UTF-8");
	 	String makpi = request.getParameter("makpi");
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_kpi?characterEncoding=UTF-8",
	            "root", "1672538Son");
	    Statement st = con.createStatement();

	    //ResultSet rs;
        int i = st.executeUpdate("delete from danhsachbm where makpi = "+ makpi +" ");
	    if (i > 0) {
	        out.print("Delete Successfull!"+"<a href='TruongKhoa.jsp'>Go back</a>");
	    } else {
	        out.print("Add fail!"+"<a href='TruongKhoa.jsp'>Go back</a>");
	    } 
	}
	catch (Exception e){
		out.println("An exception occurred: " + e.getMessage());
	}
	%>
</body>
</html>