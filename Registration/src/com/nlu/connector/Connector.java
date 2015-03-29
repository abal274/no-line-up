package com.nlu.connector;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {
	public static Connection getConnection() {

		Connection con = null;

		try {
			con = DriverManager.getConnection(
					//Change password to your own local servers password
					"jdbc:mysql://localhost:3306/courses", "root", "password");
			return con;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
}