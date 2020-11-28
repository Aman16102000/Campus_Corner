package com.signIn;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
		res.setContentType("text/html;charset=UTF-8");

		Connection con =Dao.getDbConnection();
		 int flag=Integer.parseInt(req.getParameter("options"));
		 String userid=req.getParameter("Userid");
		 String pas=req.getParameter("pas");
		 
		 PrintWriter out;
		try {
			out = res.getWriter();
			PreparedStatement ps =con.prepareStatement("select * from students where userid=?");
			ps.setString(1, userid);
			ResultSet rs=ps.executeQuery();
			
			 if(flag==0)
			 {
				 if(rs.next())
				 {
					 if(pas.equals(rs.getString(2)))
				      {
					 RequestDispatcher rd= req.getRequestDispatcher("student.jsp");
			         rd.forward(req, res);
				      }
					 else
					 {
						 out.println("Password is Wrong");
						 RequestDispatcher rd= req.getRequestDispatcher("SignIn.html");
				         rd.include(req, res);
					 }
				 }
		     }
			 
		} catch (IOException  e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
