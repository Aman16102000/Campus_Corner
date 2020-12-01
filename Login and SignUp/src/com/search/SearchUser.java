package com.search;

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
@WebServlet("/ss")
public class SearchUser extends HttpServlet{
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException
	{
		res.setContentType("text/html;charset=UTF-8");
	   PrintWriter out= res.getWriter();
	   String userid=req.getParameter("userName");
	   Connection con=Dao.getDbConnection();
	   try {
		//PreparedStatement ps =con.prepareStatement("select userid from students where userid like '%dsf%'");
		PreparedStatement ps =con.prepareStatement("select userid from students where userid like '%"+userid+"%'");
		//ps.setString(1,userid);
		ResultSet rs=ps.executeQuery();
		//String a="<h1>Haalo</h1>";
		//out.println(a);
		String result="";
		while(rs.next())
		{
			result=result+"<h4>"+rs.getString(1)+"</h4>";
		}
		out.println(result);
		RequestDispatcher rd= req.getRequestDispatcher("Seacrh.jsp");
		rd.include(req, res);
	   } catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	}
}
