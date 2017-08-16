package com.raza.jsp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
@WebServlet("/Signin")

public class Signin extends HttpServlet {
    
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String driver = "com.mysql.cj.jdbc.Driver";
		String db = "jdbc:mysql://localhost:3306/diary?autoReconnect=true&SSL=false";
		
		String name = req.getParameter("name");
		String pass = req.getParameter("password");
		String ver_p = req.getParameter("password_verify");
		String email = req.getParameter("email");
		
		if(pass.equals(ver_p))
		{
		try {
		
			Class.forName(driver);
		    Connection con = DriverManager.getConnection(db, "root", "");
		    String sql = "INSERT INTO login VALUES(?,?,?)";
		    PreparedStatement stmt = con.prepareStatement(sql);
		    System.out.println("after connection");
		    stmt.setString(1, name);
		    stmt.setString(2, email);
		    stmt.setString(3, pass);
		    int i = stmt.executeUpdate();
		    System.out.println("after execute");
		    ServletContext sc = this.getServletContext();
			RequestDispatcher rd = sc.getRequestDispatcher("/about.jsp");
			rd.forward(req, res);
		    
		}catch(Exception e) {
			e.printStackTrace();
		}
	   
	}else {
		System.out.println("password failed");
		ServletContext sc = this.getServletContext();
		RequestDispatcher rd = sc.getRequestDispatcher("/index.jsp");
		rd.forward(req, res);
	}	
	
	
	
}
}
