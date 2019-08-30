//package w3kindergarten.model;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//
//import com.sun.org.apache.bcel.internal.generic.ALOAD;
//
//import w3kindergarten.model.dto.NoticeBoardDTO;
//import w3kindergarten.model.util.DBUtil;
//
//public class NoticeBoardDAO {
//
//	
//	// 게시판 작성
//	public static boolean writeContent(NoticeBoardDTO content) {
//		System.out.println("writeContent()");
//		
//		Connection con = null;
//		PreparedStatement pstmt = null;
//		boolean result = false;
//		
//		try {
//			con = DBUtil.getConnection();
//			pstmt = con.prepareStatement("insert into NOTICE_BOARD values(seq_w3kindergarten_noticeBoard.nextval, ?, ?, 1, 'uname', sysdate, sysdate,0)");
//			pstmt.setString(1, content.getTitle());
//			pstmt.setString(2, content.getContent());
//			pstmt.setString(3, content.getUserName());
//		}finally {
//			DBUtil.close(con, pstmt);
//		}
//		private int boardNo;	// Sequence
//		private String title;	// set
//		private String content;	//set
//		private String userName;
//		private String createDate; //sysdate
//		private String modifyDate;	//sysdate
//		private int readNum;	 //set
//		
//		
//		
//		return false;
//	}
	
	
	// (수정 필요)게시판 리스트 - 글번호, 제목, 내용, 작성자, 댓글번호, 작성자, 작성일(modifyDate), 조회수
//	public static ArrayList<NoticeBoardDTO> getAllBoardContents() throws SQLException{
//		
//		Connection con = null;
//		PreparedStatement pstmt = null;
//		ResultSet rset = null;
//		ArrayList<NoticeBoardDTO> boardList= null;
//		try {
//			con = DBUtil.getConnection();
//			pstmt = con.prepareStatement("SELECT * FROM NOTICE_BOARD");
//			rset = pstmt.executeQuery();
//			boardList = new ArrayList<>();
//			while(rset.next()) {
//				boardList.add(new NoticeBoardDTO(rset.getInt(1),rset.getString(2),rset.getString(3),rset.getInt(4),rset.getString(5),rset.getString(7),rset.getInt(8)));
//			}
//		}finally {
//			DBUtil.close(con, pstmt, rset);
//		}
//		return boardList;
		
//	}
//}