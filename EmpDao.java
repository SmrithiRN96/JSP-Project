package com.Dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dto.EmpDto;


public class EmpDao {
	
	public static Connection getConnect() throws ClassNotFoundException, SQLException {
		Connection con=null;
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JSPCRUD","root","");
		return con;
	}
	public static int saveDetails(EmpDto e) throws SQLException, ClassNotFoundException {
		int status=0;
		Connection con=EmpDao.getConnect();
		PreparedStatement ps=con.prepareStatement("INSERT INTO REGISTER(NAME,PASSWORD,EMAIL,COUNTRY,GENDER) VALUES(?,?,?,?,?)");
		ps.setString(1,e.getName() );
		ps.setString(2, e.getPwd());
		ps.setString(3, e.getEmail());
		ps.setString(4, e.getCountry());
		ps.setString(5, e.getGender());
		status=ps.executeUpdate();
		return status;
	}
	public static List<EmpDto> displayDetails() throws ClassNotFoundException, SQLException {
		Connection con=EmpDao.getConnect();
		List<EmpDto> l=new ArrayList();
		PreparedStatement ps=con.prepareStatement("SELECT * FROM REGISTER");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			EmpDto e=new EmpDto();
			e.setId(rs.getInt(1));
			e.setName(rs.getString(2));
			e.setPwd(rs.getString(3));
			e.setEmail(rs.getString(4));
			e.setCountry(rs.getString(5));
			e.setGender(rs.getString(6));
			l.add(e);
		}
		return l;
		
	}
	public static int updateDetails(EmpDto e) throws ClassNotFoundException, SQLException {
		int status=0;
		Connection con=EmpDao.getConnect();
		PreparedStatement ps=con.prepareStatement("UPDATE REGISTER SET NAME=?,PASSWORD=?,EMAIL=?,COUNTRY=?,GENDER=? WHERE ID=?");
		ps.setString(1, e.getName());
		ps.setString(2, e.getPwd());
		ps.setString(3, e.getEmail());
		ps.setString(4, e.getCountry());
		ps.setString(5, e.getGender());
		ps.setInt(6, e.getId());
		status=ps.executeUpdate();
		return status;
	}
	
	public static EmpDto selectDetailsbyId(int id) throws ClassNotFoundException, SQLException {
		Connection con=EmpDao.getConnect();
		PreparedStatement ps=con.prepareStatement("SELECT * FROM REGISTER WHERE ID=?");
		ps.setInt(1, id);
		EmpDto e=new EmpDto();
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			e.setId(rs.getInt(1));
			e.setName(rs.getString(2));
			e.setPwd(rs.getString(3));
			e.setEmail(rs.getString(4));
			e.setCountry(rs.getString(5));
			e.setGender(rs.getString(6));
		}
		return e;
		
	}
	
	public static int deleteDetails(int id) throws ClassNotFoundException, SQLException {
		int status=0;
		Connection con=EmpDao.getConnect();
		EmpDto e=new EmpDto();
		PreparedStatement ps=con.prepareStatement("DELETE FROM REGISTER WHERE ID=?");
		ps.setInt(1, id);
		status=ps.executeUpdate();
		return status;
	}

}
