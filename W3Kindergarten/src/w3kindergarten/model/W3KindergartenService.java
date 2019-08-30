package w3kindergarten.model;

import java.sql.SQLException;
import java.util.ArrayList;

import w3kindergarten.exception.NotExistException;
import w3kindergarten.model.dto.BoardDTO;
import w3kindergarten.model.dto.UsersDTO;

public class W3KindergartenService {

	/* User CRUD */	
	public static void notExistUser(String userName) throws SQLException, NotExistException {
		UsersDTO user = UsersDAO.getUser(userName);
		System.out.println("=000  0" + user);
		if(user == null) {
			throw new NotExistException("Account or password is incorrect");
		}
	}
	
	
	// 회원 가입
	public static boolean userAdd(UsersDTO user) {
		boolean result = false;
		System.out.println("signup2");
		try {
			result = UsersDAO.addUser(user);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	public static ArrayList<UsersDTO> userAllGet() throws SQLException{
		return UsersDAO.getAllUsers();
	}
	
	
	public static UsersDTO userGet(String username) throws NotExistException, SQLException {
		UsersDTO user = UsersDAO.getUser(username);
		if(user == null) {
			throw new NotExistException("검색하신 사용자가 존재하지 않습니다.");
		}
		return user;
	}
	
	// ID획득 - 로그인
	// 해결 필요 - NullPointException
	public static String userNameGet(String userName) throws SQLException {
		String result = UsersDAO.getUser(userName).getUserName();
		System.out.println("signin2(userget)");
		return result;
	}
	
	// PW 획득 - 로그인
	public static String userPasswordGet(String userName) throws SQLException {
		String result = UsersDAO.getUser(userName).getPassword();
		System.out.println("signin2(pswget)");
		return result;
	}
	
	// 권한 획득 - 로그인
	public static int userPermission(String userName) throws SQLException {
		int result = UsersDAO.getUser(userName).getPermission();
		return result;
	}
	
	// 사용자 회원 정보 수정
	public static boolean userUpdate(UsersDTO user) throws SQLException, NotExistException {
		System.out.println("service userupdate() ====" +user.getUserName());
		
		
		notExistUser(user.getUserName());
		
		boolean result = UsersDAO.updateUser(user);
		System.out.println("UsersDAO.updateUser(user)");
		if(!result) {
			throw new NotExistException("회원정보 수정 실패");
		}
		return result;
	}
	
	// 회원 탈퇴
	public static boolean userDelete(String username) throws SQLException, NotExistException {
		System.out.println("service userdelete()");
		boolean result = UsersDAO.deleteUser(username);
		if(!result) {
			throw new  NotExistException("회원 탈퇴를 실패하였습니다.");
		}
		return result;
	}
	
	//게시판 리스트
	public static ArrayList<BoardDTO> boardAllGet() throws SQLException{
		return BoardDAO.getAllBoard();
	}
	
	

	
	// 게시판 쓰기
	public static boolean contentWrite(BoardDTO board){
		boolean result = false;
		try {
			result = BoardDAO.writeContent(board);
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	// 게시판 읽기
	public static BoardDTO boardRead(String title) throws SQLException, NotExistException {
		BoardDTO board = BoardDAO.readBoard(title);
		if(board == null) {
			throw new NotExistException("검색하신 게시판은 존재하지 않습니다.");
		}
//		System.out.println("boardRead: "+ board.getContent());
		return board;
	}
	
	// 게시판 수정
	public static boolean boardUpdate(BoardDTO board) throws SQLException, NotExistException {
		boolean result = BoardDAO.updateBoard(board);
		if(!result) {
			throw new NotExistException("게시판 정보 수정 실패");
		}
		return result;
	}
	// 게시판 삭제
	public static boolean boardDelete(int boardNo) throws NotExistException, SQLException {
		boolean result = BoardDAO.deleteBoard(boardNo);
		if(!result) {
			throw new NotExistException("게시판을 삭제하지 못했습니다.");
		}
		return result;
	}
}

	

	
	
	//-----------------------------------------------------------------------------------
	// 권한: 읽기 모드/읽고,쓰기 모드
	// 관리자 로그인
	// 관리자 페이지 접근
	// 권한 수정
	// 회원 삭제
	// 웹 페이지 수정
	// 게시판 삭제	----------------
	// 댓글 삭제	----------------
	// 회원 등록(신입 직원)
	//-----------------------------------------------------------------------------------
	

	
	
	// 댓글 작성
	// 댓글 읽기
	// 댓글 수정
	// 댓글 삭제
	
	//Quiz
	// 문제 제출
	// 답
	// Score 합산 및 DB 저장
	
	// OAuth 2.0	?
	// 네이버 로그인	?
	// 구글 로그인		?
	// 카카오 로그인	?

