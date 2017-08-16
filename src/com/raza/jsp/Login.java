package com.raza.jsp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Login extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse res) {
	String driver = "com.mysql.cj.jdbc.Driver";
	String db = "jdbc:mysql://localhost:3306/diary?autoReconnect=true&SSL=false";
	
	String name = req.getParameter("name");
	String pass = req.getParameter("password");
	
	
	try {
	
		Class.forName(driver);
	    Connection con = DriverManager.getConnection(db, "root", "");
	
	if(con.isValid(1)){
		System.out.print("done");
	}
	   
	Statement stmt = con.createStatement();
	String sql = "SELECT * FROM login";
	ResultSet rs = stmt.executeQuery(sql);
	while(rs.next())
	{
		String s = rs.getString(1);
		String s1 = rs.getString(3);
		
		if(s.equals(name) && s1.equals(pass))
		{
			ServletContext sc = this.getServletContext();
			RequestDispatcher rd = sc.getRequestDispatcher("/success.jsp");
			rd.forward(req, res);
			return;
		} 
	}ServletContext sc = this.getServletContext();
	RequestDispatcher rd = sc.getRequestDispatcher("/index.jsp");
	rd.forward(req, res);
	
	}catch(Exception e) {
		e.printStackTrace();
	}
   
}	

}

