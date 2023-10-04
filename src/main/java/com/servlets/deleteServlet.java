package com.servlets;

import java.io.IOException;

import com.connection.Conn;
import com.dao.Dao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete")
public class deleteServlet extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("d"));
		Dao d = new Dao(Conn.getCon());
	   boolean b = d.delete(id);
	   HttpSession hs= req.getSession();
		if(b) {
			hs.setAttribute("su", "Successfully Deleted...........");
			resp.sendRedirect("index.jsp");
		}else {
			hs.setAttribute("unsu", "Not Deleted...........");
			resp.sendRedirect("index.jsp");
		}
		
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
