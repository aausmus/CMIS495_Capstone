<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Management Console</title>
        <link href="styles.css" rel="stylesheet" type="text/css">
      
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <header>
        <nav class="navbar navbar-default manager-navbar">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="manager.jsp">Management Console</a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="#">Manage Employees</a></li>
                    <li><a href="#">Manage Inventory</a></li>
                    <li><a href="#">Sales Functions</a></li>
                    <li><a href="#">Manage Menu</a></li>
                    <li><a href="#">Time Logging</a></li>
                </ul>
            </div>
        </nav>
        </header>
              
        <div align="center">
            <h3>Admin Control Panel</h3>
            <p>Welcome <!--${requestScope.user.firstName} ${requestScope.user.lastName}--> Manager!</p>
            <!--<p>Today is ${requestScope.currentTime}</p>-->
        </div>

    </body>
</html>