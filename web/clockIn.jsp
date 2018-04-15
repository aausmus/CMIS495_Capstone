<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Clock In Panel</title>
<link rel="stylesheet" href="style.css">

<%
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  String date = sdf.format(new Date());
%>
</head>
<body>
    <%@include file="WEB-INF/jspf/menu.jspf" %>
    <div class="clockin">
	<h1>Employee Clock In Panel</h1>
        <form NAME="clockIn" METHOD="POST" class="form-control-lg">
            <INPUT TYPE="submit" NAME="Clock" VALUE="Clock In">
            <INPUT TYPE="submit" NAME= "Clock" VALUE= "Clock Out">
            <INPUT TYPE="submit" NAME= "Clock" VALUE="Start Break">
            <INPUT TYPE="submit" NAME= "Clock" VALUE="End Break">
        </form>
        </br></br></br>
        <div class="clockin-text">
<%    
   String clockIN = request.getParameter("Clock");
	if (clockIN == null){ 
		
	} else if (clockIN.equals("Clock In")){
		  out.print("<p>"+"You clocked in at: "+ date.toString()+"</p>");
	}else if (clockIN.equals("Clock Out")){
		out.print("<p>"+"You clocked out at: " + date.toString()+"</p>");
	}else if (clockIN.equals("Start Break")){
		out.print("<p>"+"You started your break: " + date.toString()+"</p>");
	}else if (clockIN.equals("End Break")){
		out.print("<p>"+"You ended your break: " + date.toString()+"</p>");
	}
    
%>
        </div>
    </div>

</body>
</html>