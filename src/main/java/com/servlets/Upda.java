package com.servlets;

import java.io.IOException;

import com.connection.Conn;
import com.dao.Dao;
import com.entity.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/update")
public class Upda extends HttpServlet{
  
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String f=req.getParameter("F");
		String d=req.getParameter("D");
		String q=req.getParameter("Q");
		String a=req.getParameter("A");
		String e=req.getParameter("E");
		String p=req.getParameter("P");
		int id=  Integer.parseInt(req.getParameter("hid"));
		Student st = new Student(id,f,d,q,a,e,p);
		Dao o = new Dao(Conn.getCon());
		boolean k=o.update(st);
		HttpSession hs=req.getSession();
		if(k) {
			hs.setAttribute("su", " Updated Successfully Added...........");
			resp.sendRedirect("index.jsp");
		}else {
			hs.setAttribute("unsu", "Not Updated...........");
			resp.sendRedirect("index.jsp");
		}
	}
   
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
