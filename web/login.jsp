<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="styles.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Add new user</title>
</head>
<body>
    <%@include file="WEB-INF/jspf/menu.jspf" %>
    <script>
        $(function() {
            $('input[name=dob]').datepicker();
        });
    </script>
    <div class="pin">
        <form method="POST" action='LoginController' name="frmValidate">
            <label>Pin: </label>  
            <input type="text" name="pin" value="<c:out value="${user.pin}" />" /> 
            <input type="submit" value="Submit" />
        </form>
    </div>
           
</body>
</html>
