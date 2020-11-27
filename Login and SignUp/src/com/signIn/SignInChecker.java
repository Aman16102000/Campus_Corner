package com.signIn;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.database.Dao;

@WebServlet("/checker")
public class SignInChecker extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException 
	{
		Connection con =Dao.getDbConnection();
		 int flag=Integer.parseInt(req.getParameter("options"));
	//	 String name=req.getParameter("")
		 PrintWriter out;
		try {
			out = res.getWriter();
			
			 if(flag==0)
			 {
	        	RequestDispatcher rd= req.getRequestDispatcher("student.jsp");
	         	rd.forward(req, res);
		     }
			 
		} catch (IOException  e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
