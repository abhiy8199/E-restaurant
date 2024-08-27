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
 * Servlet implementation class reg
 */
public class reservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		 PrintWriter obj = response.getWriter();
		 obj.print("Hello in register servlet....");
		 
		 Connection con= null;
		 PreparedStatement ps =null;
		 RequestDispatcher rd = null;
		 
		 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restaurant","root","");
			
			ps=con.prepareStatement("insert into reservation value(?,?,?,?,?,?);");
			ps.setString(1, request.getParameter("name"));
            ps.setString(2, request.getParameter("email"));
            ps.setString(3, request.getParameter("phone"));
			ps.setString(4, request.getParameter("reserv_date"));
			ps.setString(5, request.getParameter("reserv_time"));
			ps.setString(6, request.getParameter("guests"));
		
			 int rowcount = ps.executeUpdate();
			 rd=request.getRequestDispatcher("Reservation.jsp");
			 
	   	   if(rowcount>0) {
			request.setAttribute("status", "sucess");
			}
			
		 else 
			{

		    request.setAttribute("status", "fail");
			}
			
			rd.forward(request, response);
			     
		} catch (Exception e) {
			
			obj.print("/n Error: " + e);
			e.printStackTrace();
		}
		

	}

}



