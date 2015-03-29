package com.nlu.domain;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import com.mysql.jdbc.PreparedStatement;
import com.nlu.model.TimeTableModel;
import com.nlu.connector.Connector;

public class TimeTable {
	
	Connection con = null;

	public LinkedList<Object> getTypes(String stuID) {

		String query = "SELECT CourseCode FROM Timetable WHERE Student_Id LIKE'%"
				+ stuID + "%'";

		LinkedList<Object> llist = new LinkedList<Object>();
		ResultSet rs = null;
		PreparedStatement ps = null;
		TimeTableModel ttm = new TimeTableModel();

		con = Connector.getConnection();
		try {
			ps = (PreparedStatement) con.prepareStatement(query);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			rs = ps.executeQuery();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		try {
			while (rs.next()) {
				ttm.setCourseCode(rs.getString("CourseCode"));

				llist.add(ttm);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			ps.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		return llist;
	}

}