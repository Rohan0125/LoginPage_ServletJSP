package com.loginexample.dao;

import java.sql.*;

public class LoginDAO {
	public static String url = "jdbc:mysql://localhost:3306/loginpass";
	public static String unamedb = "root";
	public static String passdb = "asdf";
	public static String sql = "select * from usercred where uname=? and pass=?";
	public boolean checkcred(String uname, String pass) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,unamedb,passdb);
			PreparedStatement pst= con.prepareStatement(sql);
			pst.setString(1,uname);
			pst.setString(2, pass);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
}
