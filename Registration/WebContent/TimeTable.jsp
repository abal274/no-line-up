<%@page import="com.sun.org.apache.xerces.internal.impl.dv.xs.DateTimeDV"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page session="true" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.text.SimpleDateFormat,java.util.Locale"%>
<!-- Download the taglib and place into WEB-INF/lib folder if you are using tomcat to test  -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%
try {
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    System.out.println("MySQL JDBC Driver Connection Established");
}catch(Exception ex){
    out.println("Unable to connect to database"+ex);
}   
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="Css/Style.css" rel="Stylesheet" type="text/css"/>
<title>Time Table</title>
</head>
<body>
<% 
Locale locale = Locale.CANADA;
java.util.Calendar calendar = java.util.Calendar.getInstance( locale );

java.util.Date now = calendar.getTime();

%>	<div class="Logo">
		<img class="logo" src="Images/logo.png" alt="Logo"/>
	</div>	

	<a href="index.jsp">Home page</a>
	
	<table border="1" > 
 <tr> 
 <th>Course Code</th> 
 </tr> 
 <c:forEach var="TimeTable" items="${TimeTable}"> 
 <tr> 
 <td><c:out value="${TimeTable.CourseCode}"/></td> 
 </tr> 
 </c:forEach> 
 </table>  
</body>
</html>