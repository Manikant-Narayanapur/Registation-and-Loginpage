package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDao;
import com.DB.DBconnect;
import com.entities.user;


@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String email=request.getParameter("email1");
		String password=request.getParameter("password1");
		
		UserDao dao= new UserDao(DBconnect.getConnection());
		user us=dao.getLogin(email, password);
		
		if(us!=null)
		{
			HttpSession sess=request.getSession();
			sess.setAttribute("user-ob", us);
			response.sendRedirect("home.jsp");
		}
		else
		{
			HttpSession sess=request.getSession();
			sess.setAttribute("error-msg","Invalid email and password");
			response.sendRedirect("login.jsp");
		}
			
	}

}
