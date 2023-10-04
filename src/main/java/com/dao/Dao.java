package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Student;

import jakarta.servlet.http.HttpServlet;

public class Dao{
	private Connection con;
	public Dao(Connection con) {
		this.con=con;
	}
	public boolean add(Student ob) {
		boolean f=false;
		try {
		PreparedStatement ps=	con.prepareStatement("insert into det2 (fullname,date,qualification, address,email,password) values(?,?,?,?,?,?)");
		ps.setString(1, ob.getName());
		ps.setString(2, ob.getDate());
		ps.setString(3, ob.getQualification());
		ps.setString(4, ob.getAddress());
		ps.setString(5, ob.getEmail());
		ps.setString(6, ob.getPassword());
		int a = ps.executeUpdate();
		if(a==1)f=true;
		}catch (Exception e) {
			System.out.print(e);
		}
		return f;
	}

	public List<Student> getAll(){
		List<Student> ll = new ArrayList<Student>();
		
		try {
			PreparedStatement ps=con.prepareStatement("select * from det2");
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				Student st=new Student();
				st.setId(rs.getInt(1));
				st.setName(rs.getString(2));
				st.setDate(rs.getString(3));
				st.setQualification(rs.getString(4));
				st.setAddress(rs.getString(5));
				st.setEmail(rs.getString(6));
				st.setPassword(rs.getString(7));
				ll.add(st);
			}
		}catch (Exception e) {
			System.out.print(e);
		}
		return ll;
	}
	
	public Student getById(int id) {
		Student st = new Student();
		try {
			PreparedStatement ps=con.prepareStatement("select * from det2 where id=?");
		ps.setInt(1, id);
		 ResultSet rs=ps.executeQuery();
		 while(rs.next()) {
			 st.setId(rs.getInt(1));
				st.setName(rs.getString(2));
				st.setDate(rs.getString(3));
				st.setQualification(rs.getString(4));
				st.setAddress(rs.getString(5));
				st.setEmail(rs.getString(6));
				st.setPassword(rs.getString(7));
		 }
		}catch (Exception e) {
			System.out.print(e);
		}
		return st;
	}
	
	public boolean update(Student ob) {
		boolean f=false;
		try {
			PreparedStatement ps = con.prepareStatement("update det2 set fullname=?,date=?,qualification=?,address=?,email=?,password=? where id=?");
		  ps.setString(1, ob.getName());
			ps.setString(2, ob.getDate());
			ps.setString(3, ob.getQualification());
			ps.setString(4, ob.getAddress());
			ps.setString(5, ob.getEmail());
			ps.setString(6, ob.getPassword());
			ps.setInt(7, ob.getId());
			int a = ps.executeUpdate();
			if(a==1)f=true;
		}
		catch (Exception e) {
			System.out.print(e);
		}
		return f;
	}
	
	public boolean delete(int id) {
		boolean f = false;
          try {
        	  PreparedStatement ps = con.prepareStatement("delete from det2 where id=?");
		   ps.setInt(1, id);
		   int a=ps.executeUpdate();
		   if(a==1) f=true;
          }catch (Exception e) {
		 System.out.print(e);	
		}
          return f;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
