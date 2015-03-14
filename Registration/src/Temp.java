

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class Temp
 */
@WebServlet("/Temp")
public class Temp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Temp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("Value");
		String SearchTerm = request.getParameter("SearchTerm");
    	String Code = "";
    	String Name = "";
    	String Prof = "";
    	String room = "";
    	String time = "";
    	String day = "";
		String ccode="";
		PreparedStatement ps = null;
		try {
				Class.forName("com.mysql.jdbc.Driver").newInstance(); 
				System.out.println("MySQL JDBC Driver Connection Established");
			}catch(Exception ex){
				System.out.println("Unable to connect to database"+ex);
			} 
  	  Connection con;
	try {
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courses","root","nelly123");
	    System.out.println("Database Connection Established");
	    if(!con.isClosed())
	         System.out.println("Successfully connected to " + "MySQL server using TCP/IP...");
	    String sql = "SELECT  CourseCode, CourseName, Professor, Room, TimeSlot, DaySlot FROM Course WHERE CourseCode='"+code+"'";
	    Statement s = con.createStatement();
        ResultSet rs = s.executeQuery(sql);
	    while(rs.next()){
	    	Code = rs.getString(1);
	    	Name = rs.getString(2);
	    	Prof = rs.getString(3);
	    	room = rs.getString(4);
	    	time = rs.getString(5);
	    	day = rs.getString(6);
	    	System.out.println(Code+Name+Prof+room+time+day);

	    }
	    	String sql2 = "SELECT * FROM temp";
	    	Statement s2 = con.createStatement();
	    	ResultSet rs2 = s.executeQuery(sql2);
	    	while(rs2.next()){
	    		ccode= rs2.getString(1);

	    		
	    	}
        
    		if (ccode.equalsIgnoreCase(code)){
    			System.out.println("You Already Added this course to the time table");
    		}else{
        
        
			String queryString = "INSERT INTO temp(CourseCode, CourseName, Professor, Room, TimeSlot, DaySlot)Values(?,?,?,?,?,?);";
			
			ps = (PreparedStatement) con.prepareStatement(queryString);
			ps.setString(1, code);
			ps.setString(2, Name);
			ps.setString(3, Prof);
			ps.setString(4, room);
			ps.setString(5, time);
			ps.setString(6, day);
			ps.executeUpdate();
			System.out.println("ADDED TO TIME TABLE");
			ps.close();
    		}
			s.close();
			rs.close();
			
			s2.close();
			rs2.close();
			response.sendRedirect("TempTimeTable.jsp?SearchTerm="+SearchTerm);
		 	System.out.println(Code+Name+Prof+room+time+day);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
