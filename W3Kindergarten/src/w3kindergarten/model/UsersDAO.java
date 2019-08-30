package w3kindergarten.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

import w3kindergarten.model.dto.UsersDTO;
import w3kindergarten.model.util.DBUtil;

public class UsersDAO {
	
	public static boolean addUser(UsersDTO user) throws SQLException {
		System.out.println("signup3");
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean result = false;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("insert into users values(seq_w3kindergarten_users.nextval,?,?,?,?,?,sysdate,sysdate,2)");
			pstmt.setString(1, user.getUserName());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getEmail());
			pstmt.setString(4, user.getNickName());
			pstmt.setString(5, user.getPhone());
			int i = pstmt.executeUpdate();
			if(i == 1) {
				result = true;
			}
		}finally {
			DBUtil.close(con, pstmt);
		}
		return result;
	}
	
	public static UsersDTO getUser(String userName) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt= null;
		ResultSet rset = null;
		UsersDTO user = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("select * from users where username = ?");
			pstmt.setString(1, userName.trim());
			rset = pstmt.executeQuery();
			
		while(rset.next()) {
				
				user = new UsersDTO(rset.getInt(1), rset.getString(2), rset.getString(3), rset.getString(4), rset.getString(5), rset.getString(6), rset.getString(7), rset.getString(8), rset.getInt(9));
			}
		}finally {
			DBUtil.close(con, pstmt, rset);
		}
		
		return user;
	}

	public static ArrayList<UsersDTO> getAllUsers() throws SQLException{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<UsersDTO> users = null;
		
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("select * from users");
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				users.add(new UsersDTO(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getString(4),rset.getString(5),rset.getString(6),rset.getString(7), rset.getString(8), rset.getInt(9)));
			}
		}finally {
			DBUtil.close(con, pstmt, rset);
		}
		
		return users;
	}
	
	
	// password, email, nickname, phone 변경 가능
	public static boolean updateUser(UsersDTO user) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("update users set password=?, email=?, nickname=?, phone=? where username=?");
			pstmt.setString(1, user.getPassword());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getNickName());
			pstmt.setString(4, user.getPhone());
			pstmt.setString(5, user.getUserName());
			
			int result = pstmt.executeUpdate();
			if(result == 1) {
				return true;
			}
		}finally {
			DBUtil.close(con, pstmt);
		}
		return false;
	}
	
	
	public static boolean deleteUser(String username) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("DELETE FROM users WHERE username = ?");
			pstmt.setString(1, username);
			
			int result = pstmt.executeUpdate();
			if(result == 1) {
				return true;
			}
		}finally {
			DBUtil.close(con, pstmt);
		}
		return false;
	}
}


