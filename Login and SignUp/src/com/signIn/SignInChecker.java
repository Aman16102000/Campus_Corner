package com.signIn;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/checker")
public class SignInChecker extends HttpServlet{
	public void doGet(HttpServletRequest req, HttpServletResponse res) 
	{
		 int flag=Integer.parseInt(req.getParameter("options"));
		 PrintWriter out;
		try {
			out = res.getWriter();
			// out.println(flag);
			/* if(flag==0)
			 {
		RequestDispatcher rd= req.getRequestDispatcher("student.jsp");
		rd.forward(req, res);
		}*/ 
			 
		} catch (IOException  e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
