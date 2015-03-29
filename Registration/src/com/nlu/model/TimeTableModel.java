package com.nlu.model;

public class TimeTableModel {
	
	private int studentID;
	private String courseCode;	
	
	public TimeTableModel() {
		super();
	}
	
	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}
	
	public int getStudentID() {
		return this.studentID;
	}
	
	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}
	
	public String getCourseCode() {
		return this.courseCode;
	}

}
