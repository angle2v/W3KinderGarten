package w3kindergarten.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import w3kindergarten.model.dto.BoardDTO;
import w3kindergarten.model.util.DBUtil;

public class BoardDAO {

	// 게시판 목록
	public static ArrayList<BoardDTO> getAllBoard() throws SQLException{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<BoardDTO> board = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("select * from board");
			rset = pstmt.executeQuery();
			board = new ArrayList<>();
			while(rset.next()) {
				board.add(new BoardDTO(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getString(4),rset.getString(5),rset.getString(6),rset.getInt(7)));
			}
		}finally {
			DBUtil.close(con, pstmt, rset);
		}
		return board;
	}
	
	// 게시판 작성
	public static boolean writeContent(BoardDTO board) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean result = false;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("insert into BOARD values(seq_w3kindergarten_Board.nextval, ?, ?, ?, sysdate, sysdate,0)");
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, board.getUserName());
			int i = pstmt.executeUpdate();
			if(i == 1) {
				result = true;
			}
		}finally {
			DBUtil.close(con, pstmt);
		}
		return result;
	}
	
	public static BoardDTO readBoard(String title) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		BoardDTO board = null;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("SELECT * FROM board WHERE title = ?");
			pstmt.setString(1, title);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				board = new BoardDTO(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getString(4),rset.getString(5),rset.getString(6),rset.getInt(7));
			}
		}finally {
			DBUtil.close(con, pstmt, rset);
		}
		return board;
	}
	
	public static boolean updateBoard(BoardDTO board) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean result = false;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("UPDATE board set TITLE=?, CONTENT=? where board_no = ?");
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setInt(3, board.getBoardNo());
			int i = pstmt.executeUpdate();
			if(i == 1) {
				result = true; 
			}
		}finally {
			DBUtil.close(con, pstmt);
		}
		return result;
	}
	
	public static boolean deleteBoard(int boardNo) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean result = false;
		try {
			con = DBUtil.getConnection();
			pstmt = con.prepareStatement("DELETE FROM BOARD WHERE BOARD_NO=?");
			pstmt.setInt(1, boardNo);
			int i = pstmt.executeUpdate();
			if(i == 1) {
				result = true;
			}
		}finally {
			DBUtil.close(con, pstmt);
		}
		return result;
	}
	
}
