package com.database.modules;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.database.modules.CP;
import com.database.modules.student;

public class studentDao {
	
	//insert data.....
		public static boolean insertData(student st)
		{	
			boolean f=false;
			Connection con =CP.createC();
			String q="insert into student (email,name,password,registration) values (?,?,?,?)";
			
			try {
				//prepared statement object of current connection.....
				PreparedStatement pstmt=con.prepareStatement(q);
				pstmt.setString(1,st.getEmail());
				pstmt.setString(2,st.getName());
				pstmt.setString(3,st.getPassword());
				pstmt.setString(4,st.getRegistration());
				
				//execute the statement.....
				pstmt.executeUpdate();
				f=true;
				
			} catch (SQLException e) {e.printStackTrace();}
			return f;
			
		}
		
		
		
		//delete data....
		public static boolean  DeleteData(int userid)
		{
			boolean f=false;
			Connection con =CP.createC();
			String q="delete from stud where id=?";
			
			try {
				//prepared statement object of current connection.....
				PreparedStatement pstmt=con.prepareStatement(q);
				pstmt.setInt(1,userid);
				
				//execute the statement.....
				pstmt.executeUpdate();
				f=true;
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return f;
		}
		
		//update data.....
		public static boolean updatedata(String name,int id)
		{
			boolean f=false;
			Connection con =CP.createC();
			String q="update stud set name=? where id=?";
			
			try {
				//prepared statement object of current connection.....
				PreparedStatement pstmt=con.prepareStatement(q);
				pstmt.setString(1,name);
				pstmt.setInt(2, id);
				
				//execute the statement.....
				pstmt.executeUpdate();
				f=true;
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return f;
		}
		
		//display data.....
		public static void displaydata()
		{
			Connection con =CP.createC();
			String q="select * from stud";
			
			try {
				//prepared statement object of current connection.....
				Statement stmt=con.createStatement();
				ResultSet set = stmt.executeQuery(q);
				
				while(set.next())
				{
					System.out.println(set.getInt(1)+" "+set.getString(2));
				}
				
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}

		public static int getstudentid() throws SQLException {
			Connection con =CP.createC();
			int id=0;
			String q="SELECT idstudent FROM student ORDER BY idstudent DESC LIMIT 1;";
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			while(set.next())
			{id=set.getInt(1);}
			return id+1;
		}
		
		public static boolean checkEmail(student ob) throws SQLException
		{	Connection con =CP.createC();
		String q="SELECT email FROM student;";
		Statement stmt=con.createStatement();
		ResultSet set = stmt.executeQuery(q);
		while(set.next()) 
		{
			if(set.getString(1).equals(ob.getEmail()))
			{
				return true;
			}
		}
		
			return false;
		}
		
		public static boolean isadmin(admin ob) throws SQLException
		{	Connection con =CP.createC();
			String q="SELECT email,password FROM student;";
			Statement stmt=con.createStatement();
			ResultSet set = stmt.executeQuery(q);
			
			while(set.next())
			{
				if(set.getString(1).equals(ob.getEmail())&&set.getString(2).equals(ob.getPassword()))
				{
					return true;
				}
			}
			
			return false;
			
		}
		
		
	
	
}
