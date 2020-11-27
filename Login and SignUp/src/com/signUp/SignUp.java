package com.signUp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.database.Dao;
@WebServlet("/SignUpChecker")
public class SignUp extends  HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		res.setContentType("text/html;charset=UTF-8");

		String userId=req.getParameter("Userid");
		String fname=req.getParameter("fname");
		String lname=req.getParameter("lname");
		String password=req.getParameter("pas");
		
		Connection con =Dao.getDbConnection();
		PrintWriter out;
		try {
			out=res.getWriter();
			PreparedStatement ps=con.prepareStatement("insert into students values(?,?,?,?)");
			System.out.println("still running");
			ps.setString(1, userId);
			System.out.println("still running");

			ps.setString(2, password);
			ps.setString(3, fname);
			ps.setString(4, lname);
			
			PreparedStatement select=con.prepareStatement("select * from students where userid=?");
			select.setString(1,userId);
			ResultSet rs =select.executeQuery();
			System.out.println("still running");
			//System.out.println(rs.next());
			if(rs.next())
			{
				 out.println("User Id is already taken");

				RequestDispatcher rd=req.getRequestDispatcher("SignUp.html");
				rd.include(req, res);
			}
			else {
				ps.executeUpdate();
				RequestDispatcher rd=req.getRequestDispatcher("student.jsp");
				rd.forward(req, res);
			}
			
			
			
			
	} catch (SQLException  e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
