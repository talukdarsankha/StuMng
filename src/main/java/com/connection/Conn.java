package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conn {

	private static Connection con;
	public static Connection getCon() {
		if(con==null) {
			try {
			  Class.forName("com.mysql.cj.jdbc.Driver");
			  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","Sankha325#@");
			}
			catch (Exception e) {
				System.out.print(e);
			}
		}
		return con;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
