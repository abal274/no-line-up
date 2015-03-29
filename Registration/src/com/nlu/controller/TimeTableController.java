package com.nlu.controller;


import java.io.IOException;
import java.util.LinkedList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nlu.domain.TimeTable;

/**
 * Servlet implementation class TimeTableServlet
 */
@WebServlet("/TimeTable")
public class TimeTableController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimeTableController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String stuID = request.getParameter("Student_Id");
		TimeTable ttc = new TimeTable();
        LinkedList<Object> result = ttc.getTypes(stuID);
        request.setAttribute("TimeTable", result);
        RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/TimeTable.jsp");
        view.forward(request, response); 

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}