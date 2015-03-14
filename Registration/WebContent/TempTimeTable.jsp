<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%
try {
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    System.out.println("MySQL JDBC Driver Connection Established");
}catch(Exception ex){
    out.println("Unable to connect to database..."+ex);
}   
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="Css/Style.css" rel="Stylesheet" type="text/css"/>
<title>Temporary Time Table</title>
</head>
<body>
<%
          try {
	    		String code = "";
	    		String name = "";
	    		String prof = "";
	    		String room = "";
	    		String time = "";
	    		String day  = "";
    			String code1= ""; 
    			String prof1= "";
    			String room1= ""; 
    			String code2= "";
    			String prof2= "";
    			String room2= "";
    			String code3= "";
    			String prof3= "";
    			String room3= "";
    			String code4= "";
    			String prof4= "";
    			String room4= "";
    			String code5= "";
    			String prof5= "";
    			String room5= "";
    			String code99= "";
    			String prof99= "";
    			String room99= "";
    			String code6= "";
    			String prof6= "";
    			String room6= "";
    			String code7= "";
    			String prof7= "";
    			String room7= "";
    			String code8= "";
    			String prof8= "";
    			String room8= "";
    			String code9= "";
    			String prof9= "";
    			String room9= "";
    			String code10= "";
    			String prof10= "";
    			String room10= "";
    			String code11= "";
    			String prof11= "";
    			String room11= "";
    			String code12= "";
    			String prof12= "";
    			String room12= "";
    			String code13= "";
    			String prof13= "";
    			String room13= "";
    			String code14= "";
    			String prof14= "";
    			String room14= "";
    			String code15= "";
    			String prof15= "";
    			String room15= "";
    			String code16= "";
    			String prof16= "";
    			String room16= "";
    			String code17= "";
    			String prof17="";
    			String room17= "";
    			String code18= "";
    			String prof18= "";
    			String room18= "";
    			String code19= "";
    			String prof19= "";
    			String room19= "";
    			String code21= "";
    			String prof21= "";
    			String room21= "";
    			String code31= "";
    			String prof31= "";
    			String room31= "";
    			String code41= "";
    			String prof41= "";
    			String room41= "";
    			String code51= "";
    			String prof51= "";
    			String room51= "";
    			String code61= "";
    			String prof61= "";
    			String room61="" ;
        	  	String term = request.getParameter("SearchTerm");
        	  	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courses","root","nelly123");
        	    System.out.println("Database Connection Established");
        	    if(!con.isClosed())
   				System.out.println("Successfully connected to " + "MySQL server using TCP/IP...");
        	    String sql = "SELECT * FROM Temp";
        	    Statement s = con.createStatement();
        	    ResultSet rs = s.executeQuery(sql);
        	    System.out.println("query executed");
        	    out.println("<center><span style='color:blue; font-size:2em;'>TEMPORARY TIME TABLE</span>");
        	    out.println("<table border=1><tr><th>TIME</th><th>MONDAY</th><th>TUESDAY</th><th>WEDNESDAY</th><th>THURSDAY</th><th>FRIDAY</th></tr>");
    			out.println("<tfoot><tr><td>TIME</td><td>MONDAY</td><td>TUESDAY</td><td>WEDNESDAY</td><td>THURSDAY</td><td>FRIDAY</td></tr></tfoot>");
    			out.println("<tbody>");
        	
        	    	while (rs.next()) {
        	    		code = rs.getString(1);
        	    		name = rs.getString(2);
        	    		prof = rs.getString(3);
        	    		room = rs.getString(4);
        	    		time = rs.getString(5);
        	    		day  = rs.getString(6);

        	    		if (day.equalsIgnoreCase("monday")&&time.equalsIgnoreCase("8:30 AM - 10:30 AM")){
        	    			code1 = code;
        	    			prof1 = prof;
        	    			room1 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("monday")&&time.equalsIgnoreCase("10:30 AM - 12:30 PM")){
        	    			code2 = code;
        	    			prof2 = prof;
        	    			room2 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("monday")&&time.equalsIgnoreCase("12:30 PM - 2:30 PM")){
        	    			code3 = code;
        	    			prof3 = prof;
        	    			room3 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("monday")&&time.equalsIgnoreCase("2:30 PM - 4:30 PM")){
        	    			code4 = code;
        	    			prof4 = prof;
        	    			room4 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("monday")&&time.equalsIgnoreCase("4:30 PM - 6:30 PM")){
        	    			code5 = code;
        	    			prof5 = prof;
        	    			room5 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("tuesday")&&time.equalsIgnoreCase("8:30 AM - 10:30 AM")){
        	    			code99 = code;
        	    			prof99 = prof;
        	    			room99 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("tuesday")&&time.equalsIgnoreCase("10:30 AM - 12:30 PM")){
        	    			code6 = code;
        	    			prof6 = prof;
        	    			room6 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("tuesday")&&time.equalsIgnoreCase("12:30 PM - 2:30 PM")){
        	    			code7 = code;
        	    			prof7 = prof;
        	    			room7 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("tuesday")&&time.equalsIgnoreCase("2:30 PM - 4:30 PM")){
        	    			code8 = code;
        	    			prof8 = prof;
        	    			room8 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("tuesday")&&time.equalsIgnoreCase("4:30 PM - 6:30 PM")){
        	    			code9 = code;
        	    			prof9 = prof;
        	    			room9 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("wednesday")&&time.equalsIgnoreCase("8:30 AM - 10:30 AM")){
        	    			code10 = code;
        	    			prof10 = prof;
        	    			room10 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("wednesday")&&time.equalsIgnoreCase("10:30 AM - 12:30 PM")){
        	    			code11 = code;
        	    			prof11 = prof;
        	    			room11 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("wednesday")&&time.equalsIgnoreCase("12:30 PM - 2:30 PM")){
        	    			code12 = code;
        	    			prof12 = prof;
        	    			room12 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("wednesday")&&time.equalsIgnoreCase("2:30 PM - 4:30 PM")){
        	    			code13 = code;
        	    			prof13 = prof;
        	    			room13 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("wednesday")&&time.equalsIgnoreCase("4:30 PM - 6:30 PM")){
        	    			code14 = code;
        	    			prof14 = prof;
        	    			room14 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("thursday")&&time.equalsIgnoreCase("8:30 AM - 10:30 AM")){
        	    			code15 = code;
        	    			prof15 = prof;
        	    			room15 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("thursday")&&time.equalsIgnoreCase("10:30 AM - 12:30 PM")){
        	    			code16 = code;
        	    			prof16 = prof;
        	    			room16 = room;
        	    			
        	    		}
        	    		else if (day.equalsIgnoreCase("thursday")&&time.equalsIgnoreCase("12:30 PM - 2:30 PM")){
        	    			code17 = code;
        	    			prof17 = prof;
        	    			room17 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("thursday")&&time.equalsIgnoreCase("2:30 PM - 4:30 PM")){
        	    			code18 = code;
        	    			prof18 = prof;
        	    			room18 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("thursday")&&time.equalsIgnoreCase("4:30 PM - 6:30 PM")){
        	    			code19 = code;
        	    			prof19 = prof;
        	    			room19 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("friday")&&time.equalsIgnoreCase("8:30 AM - 10:30 AM")){
        	    			code21 = code;
        	    			prof21 = prof;
        	    			room21 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("friday")&&time.equalsIgnoreCase("10:30 AM - 12:30 PM")){

        	    			code31 = code;
        	    			prof31 = prof;
        	    			room31 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("friday")&&time.equalsIgnoreCase("12:30 PM - 2:30 PM")){
        	    			code41 = code;
        	    			prof41 = prof;
        	    			room41 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("friday")&&time.equalsIgnoreCase("2:30 PM - 4:30 PM")){
        	    			code51 = code;
        	    			prof51 = prof;
        	    			room51 = room;
        	    		}
        	    		else if (day.equalsIgnoreCase("friday")&&time.equalsIgnoreCase("4:30 PM - 6:30 PM")){
        	    			code61 = code;
        	    			prof61 = prof;
        	    			room61 = room;
        	    		}
        	    		System.out.println(code+prof+room);
        	    	}
        	    	out.println("<tr><td>8:30 - 10:20</td><td>"+code1 + "<br/>" + prof1 + "<br/>" + room1 +"</td><td>"+code99 + "<br/>" + prof99 + "<br/>" + room99+"</td><td>"+code10 + "<br/>" + prof10 + "<br/>" + room10 +"</td><td>"+code15 + "<br/>" + prof15 + "<br/>" + room15 +"</td><td>"+code21 + "<br/>" + prof21 + "<br/>" + room21 +"</td></tr>");
        	    	out.println("<tr><td>10:30 - 12:20</td><td>"+code2 + "<br/>" + prof2 + "<br/>" + room2 +"</td><td>"+code6 + "<br/>" + prof6 + "<br/>" + room6 +"</td><td>"+code11 + "<br/>" + prof11 + "<br/>" + room11 +"</td><td>"+code16 + "<br/>" + prof16 + "<br/>" + room16 +"</td><td>"+code31 + "<br/>" + prof31 + "<br/>" + room31 +"</td></tr>");
        	    	out.println("<tr><td>12:30 - 2:20</td><td>"+code3 + "<br/>" + prof3 + "<br/>" + room3 +"</td><td>"+code7 + "<br/>" + prof7 + "<br/>" + room7 +"</td><td>"+code12 + "<br/>" + prof12 + "<br/>" + room12 +"</td><td>"+code17 + "<br/>" + prof17 + "<br/>" + room17 +"</td><td>"+code41 + "<br/>" + prof41 + "<br/>" + room41 +"</td></tr>");
        	    	out.println("<tr><td>2:30 - 4:20</td><td>"+code4 + "<br/>" + prof4 + "<br/>" + room4 +"</td><td>"+code8 + "<br/>" + prof8 + "<br/>" + room8 +"</td><td>"+code13 + "<br/>" + prof13 + "<br/>" + room13 +"</td><td>"+code18 + "<br/>" + prof18 + "<br/>" + room18 +"</td><td>"+code51 + "<br/>" + prof51 + "<br/>" + room51 +"</td></tr>");
        	    	out.println("<tr><td>4:30 - 6:20</td><td>"+code5 + "<br/>" + prof5 + "<br/>" + room5 +"</td><td>"+code9 + "<br/>" + prof9 + "<br/>" + room9 +"</td><td>"+code14 + "<br/>" + prof14 + "<br/>" + room14 +"</td><td>"+code19 + "<br/>" + prof19 + "<br/>" + room19 +"</td><td>"+code61 + "<br/>" + prof61 + "<br/>" + room61 +"</td></tr>");
        	    		System.out.println("query executed");
               		out.println("</tbody></table><a href=Search.jsp?SearchTerm="+ term + ">Back To Search</a></center>");
              	 System.out.println("output extracted");
               	rs.close();
              	s.close();
             	con.close();
              }
          catch (SQLException e) {
          }
       catch (Exception e) {
       }
     %>
</body>
</html>