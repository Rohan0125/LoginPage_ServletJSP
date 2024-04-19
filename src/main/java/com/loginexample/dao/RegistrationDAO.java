package com.loginexample.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegistrationDAO {
    public static String URL = "jdbc:mysql://localhost:3306/loginpass";
    public static String unameDB = "root";
    public static String passDB = "asdf";
    public String sqlUserInfo = "INSERT INTO userinfo(fullname, email, userID) VALUES (?, ?, ?)";
    public String sqlUsercred = "INSERT INTO usercred(uname, pass) VALUES (?, ?)";

    public boolean addUser(String fullname, String email, String password, String username) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(URL, unameDB, passDB);

            PreparedStatement ps = con.prepareStatement(sqlUsercred);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();

            int userID = getUserID(con);
            PreparedStatement pst = con.prepareStatement(sqlUserInfo);
            pst.setString(1, fullname);
            pst.setString(2, email);
            pst.setInt(3, userID);
            pst.executeUpdate();

            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public int getUserID(Connection con) throws SQLException {
        PreparedStatement pst = con.prepareStatement("SELECT userID FROM userinfo ORDER BY userID DESC LIMIT 1");
        ResultSet rs = pst.executeQuery();
        if (rs.next()) {
            return rs.getInt("userID");
        }
        return 0;
    }

	public boolean check(String parameter) {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(URL, unameDB, passDB);
			PreparedStatement ps = con.prepareStatement("select * from usercred");
			 ResultSet rs = ps.executeQuery();
		        while (rs.next()) {
		            if(rs.getString("uname").equals(parameter)) {
		            	return false;
		            }
		        }
		        return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return false;
	}
}