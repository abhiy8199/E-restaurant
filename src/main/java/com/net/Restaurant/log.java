package com.net.Restaurant;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class reg-
 */
public class log extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
            
		  PrintWriter obj = response.getWriter();
		  obj.print("Hello in login page servlet....");
		 	 
		 Connection con= null;
		 PreparedStatement ps =null;
		 RequestDispatcher rd = null;
		 
		 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
			
			ps=con.prepareStatement("select * from registration where firstname=?and password=?;");
			ps.setString(1, request.getParameter("uname"));
			ps.setString(2, request.getParameter("password"));
		
			int rowcount = ps.executeUpdate();
			rd=request.getRequestDispatcher("login.jsp");
			 
		if(rowcount>0) {
			request.setAttribute("status", "sucess");
			PrintWriter ob = response.getWriter();
			 ob.print("login sucessfull....");
			 }
			else 
			{

		    request.setAttribute("status", "fail");
		    PrintWriter ob = response.getWriter();
			 ob.print(" login failedd....");
			 }
			rd.forward(request, response);
			     
		} catch (Exception e) {
			
			obj.print("/n Error: " + e);
			e.printStackTrace();
		}
	}
}



