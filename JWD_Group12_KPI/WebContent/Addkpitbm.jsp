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
	 	String dk = request.getParameter("dk");
	 	String dtdg = request.getParameter("dtdg");
	 	String magv = (String)session.getAttribute("userid");
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_kpi?characterEncoding=UTF-8",
	            "root", "1672538Son");
	    Statement st = con.createStatement();
	    if(dk!= null)
	    {
	    //ResultSet rs;
        int i = st.executeUpdate("insert into dkkpi(magv,makpi) values('"+ magv+"','"+ dk+"')");
	    if (i > 0 ) {
	        out.print("Add Successfull!"+"<a href='dkkpitbm.jsp'>Go back</a>");
	    } else {
	        out.print("Add fail!"+"<a href='dkkpitbm.jsp'>Go back</a>");
	    }
	    }
	    else{
	    	out.print("!!!"+"<a href='dkkkpitbm.jsp'>Go back</a>");
	    }
	}
	catch (Exception e){
		out.println("Bạn đã đăng ký: " + "<a href='TruongBoMon.jsp'>Go back</a>");
	}
	%>
</body>
</html>