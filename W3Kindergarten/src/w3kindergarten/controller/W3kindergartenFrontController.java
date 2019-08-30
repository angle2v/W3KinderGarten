package w3kindergarten.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import w3kindergarten.exception.NotExistException;
import w3kindergarten.model.W3KindergartenService;
import w3kindergarten.model.dto.BoardDTO;
import w3kindergarten.model.dto.UsersDTO;

@WebServlet("/control")
public class W3kindergartenFrontController extends HttpServlet {

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("utf-8");
//      HttpSession session = request.getSession();
      // Commnad Pattern
      String command = request.getParameter("command");
      try {
         if(command.equals("signUp")) {
            signUp(request, response);
         }else if(command.equals("signIn")) {
            signIn(request, response);
         }else if(command.equals("signOut")) {
            signOut(request,response);
         }else if(command.equals("userUpdate")) {
            userUpdate(request, response);
         }else if(command.equals("userDelete")) {
            userDelete(request, response);
         }else if(command.equals("boardList")) {
            boardList(request,response);
         }else if(command.equals("boardWrite")) {
            boardWrite(request, response);
         }else if(command.equals("boardRead")) {
            boardRead(request,response);
         }else if(command.equals("boardAdjustReq")) {
            boardAdjustReq(request,response);
         }else if(command.equals("boardAdjust")) {
            boardAdjust(request, response);
         }else if(command.equals("boardDelete")) {
            boardDelete(request, response);
         }
      }catch(Exception e) {
         request.setAttribute("errorMsg", e.getMessage());
         request.getRequestDispatcher("showError.jsp").forward(request, response);
         e.printStackTrace();
      }
   }
   
   // username, password 필수 입력 (password 5자 이상의 값 입력 필요)
   // 중복처리 작업 추가 필요
   protected void signUp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String url = "showError.jsp";
      String username = request.getParameter("username");
      String password = request.getParameter("password");
      String nickname = request.getParameter("nickname");
      String email = request.getParameter("email");
      String phone = request.getParameter("phone");
      UsersDTO userdto = null;
      System.out.println("signup1");
      try {
         if(username != null && username.length() != 0 && password != null && nickname.length() != 0 && nickname != null) {   //&& password.length()>=5 : 비밀번호 5자리 이상
            userdto = new UsersDTO(username,password,nickname,email,phone);
            boolean result = W3KindergartenService.userAdd(userdto);
            if(result) {
               request.setAttribute("user", userdto);
               request.setAttribute("successMsg", "가입 완료");
               url = "successMessage.html";
            }else {
               request.setAttribute("errorMsg", "Account or password is incorrect!");
            }
         }else {
            request.setAttribute("errorMsg", "다시 시도해주세요..!");
         }
      }catch(Exception e) {
         request.setAttribute("errorMsg", e.getMessage());
         e.printStackTrace();
      }
      request.getRequestDispatcher(url).forward(request, response);
   }
   
   // 로그인, 세션 생성
   protected void signIn(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
      System.out.println("signin1");
      String url = "showError.jsp";
      String userName = request.getParameter("username");
      String password = request.getParameter("password");
      
      try {
         if(W3KindergartenService.userNameGet(userName).equals(userName) && W3KindergartenService.userPasswordGet(userName).equals(password)) {
            HttpSession session = request.getSession();
            session.setAttribute("user", W3KindergartenService.userGet(userName));
            url = "main.jsp";
            if(W3KindergartenService.userPermission(userName) == 1) {
               request.setAttribute("successMsg", "관리자 로그인 성공");
               response.sendRedirect(url);
            }else {
               request.setAttribute("successMsg", "사용자 로그인 성공");
               response.sendRedirect(url);
            }
         }
      }catch(Exception e) {
         request.setAttribute("errorMsg", "존재하지 않는 정보입니다.");
         e.printStackTrace();
//         response.sendRedirect(url);
         System.out.println("없는 아이디 2");
         request.getRequestDispatcher(url).forward(request, response);
      }
   }
   
   protected void signOut(HttpServletRequest request, HttpServletResponse response) throws IOException {
      String url = "main.jsp";
      System.out.println("signout");
      try {
         HttpSession session = request.getSession();
         session.invalidate();
         response.sendRedirect(url);
      } catch (IOException e) {
         e.printStackTrace();
         response.sendRedirect(url);
      }
   }
   
   
//   protected void userUpdateReq(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//      String url = "showError.jsp";
//      try {
//         String username = request.getParameter("username");
//         System.out.println("username: "+username);
//         request.setAttribute("user", W3KindergartenService.userGet(request.getParameter("username")));
//         
//         url = "userUpdate.jsp";
//         
//         System.out.println(request.getAttribute("user") + " " + url);
//      }catch(Exception e) {
//      request.setAttribute("errorMsg", e.getMessage());
//         request.setAttribute("errorMsg", 111);
//         e.printStackTrace();
//      }
//      request.getRequestDispatcher(url).forward(request, response);
//   }
   
   protected void userUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, NotExistException {
      System.out.println("userUpdate1");
      request.setAttribute("user", W3KindergartenService.userGet(request.getParameter("username")));
      String username = request.getParameter("username");
      String password = request.getParameter("password");
      String email = request.getParameter("email");
      String nickname = request.getParameter("nickname");
      String phone = request.getParameter("phone");
      String url = "showError.jsp";
      
      UsersDTO user = new UsersDTO(username, password, email, nickname, phone);
      
      if(W3KindergartenService.userUpdate(user) == true) {
         System.out.println("userUpdate2");
         try {
               W3KindergartenService.userUpdate(user);
               url = "successView.jsp";
               request.setAttribute("username", username);
               request.setAttribute("password", password);
               request.setAttribute("email", email);
               request.setAttribute("nickname", nickname);
               request.setAttribute("phone", phone);
               request.setAttribute("successMsg", "성공적으로 수정되었습니다.");
         }catch(Exception e) {
            request.setAttribute("errorMsg", e.getMessage());
            e.printStackTrace();
         }
      }
      request.getRequestDispatcher(url).forward(request, response);
   }
   
   protected void userDelete(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException, SQLException, NotExistException {
      
      String url = "showError.jsp";
      
      try {
         request.setAttribute("user",W3KindergartenService.userDelete(request.getParameter("username")));
         url ="userDelete.html";
         // 세션종료 코드
         
      }catch(SQLIntegrityConstraintViolationException e) {
         request.setAttribute("errorMsg", "사용자가 존재하지 않습니다.");
      }catch(Exception e) {
         request.setAttribute("errorMsg", e.getMessage());
      }
      request.getRequestDispatcher(url).forward(request, response);
      
      
   }
   
   protected void userList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String url = "showError.jsp";
      try {
         request.setAttribute("userList", W3KindergartenService.userAllGet());
         url = "userList.jsp";
      }catch(Exception e) {
         request.setAttribute("errorMsg", e.getMessage());
         e.printStackTrace();
      }
      request.getRequestDispatcher(url).forward(request, response);
   }
   
   // Board
   protected void boardList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String url = "showError.jsp";
      try {
         request.setAttribute("boardList", W3KindergartenService.boardAllGet());
         url = "boardList.jsp";
      }catch(Exception e) {
         request.setAttribute("errorMsg", e.getMessage());
         e.printStackTrace();
      }
      request.getRequestDispatcher(url).forward(request, response);
   }
   
   protected void boardWrite(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      String url = "showError.jsp";
      String title = request.getParameter("title");
      String content = request.getParameter("content");
      HttpSession session = request.getSession();
      String username = ((UsersDTO)session.getAttribute("user")).getUserName();
      BoardDTO board = new BoardDTO(title,content,username);
      try {
         boolean result = W3KindergartenService.contentWrite(board);
         if(result) {
//            request.setAttribute("successMsg", "게시물이 정상 등록 되었습니다.");
//            url = "successView.jsp";
            url = "control?command=boardList";
         }
      }catch(Exception e) {
         request.setAttribute("errorMsg", e.getMessage());
         e.printStackTrace();
      }
      request.getRequestDispatcher(url).forward(request, response);
   }
   
   protected void boardRead(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String url = "showError.jsp";
      String title = request.getParameter("title");
      try {
         request.setAttribute("board", W3KindergartenService.boardRead(title));
         url = "boardRead.jsp";
      }catch (Exception e) {
         request.setAttribute("errorMsg", e.getMessage());
         e.printStackTrace();
      }
      request.getRequestDispatcher(url).forward(request, response);
   }
   
   protected void boardAdjustReq(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String url = "showError.jsp";
      String title = request.getParameter("title");
      try {
         request.setAttribute("board", W3KindergartenService.boardRead(title));
         url = "boardAdjust.jsp";
      }catch (Exception e) {
         request.setAttribute("errorMsg", e.getMessage());
         e.printStackTrace();
      }
      request.getRequestDispatcher(url).forward(request, response);
   }
   
   
   //수정 완료
   protected void boardAdjust(HttpServletRequest request, HttpServletResponse response) throws SQLException, NotExistException, ServletException, IOException {
      String title = request.getParameter("title");
      String content = request.getParameter("content");
      String boardNo = request.getParameter("boardNo");
      int i = Integer.parseInt(boardNo);
      String url = "showError.jsp";
      BoardDTO board = new BoardDTO(i,title,content);
      if(W3KindergartenService.boardUpdate(board) == true) {
         try {
            W3KindergartenService.boardUpdate(board);
            request.setAttribute("boardList", W3KindergartenService.boardAllGet());
            url = "boardList.jsp";
            request.setAttribute("title", title);
            request.setAttribute("content", content);
//            request.setAttribute("successmsg", "성공적으로 게시판에 적용되었습니다.");
         }catch(Exception e) {
            request.setAttribute("errorMsg", e.getMessage());
            e.printStackTrace();
         }
         request.getRequestDispatcher(url).forward(request, response);
      }
   }
   
   protected void boardDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      String url = "showError.jsp";
      String boardNoStr = request.getParameter("boardNo");
      
      System.out.println("boardNostr: "+boardNoStr);
      
      int boardNo = Integer.parseInt(boardNoStr);
      System.out.println("boardNo: "+boardNo);
      
      try {
         W3KindergartenService.boardDelete(boardNo);
         url = "control?command=boardList";
         System.out.println(1);
      }catch(SQLIntegrityConstraintViolationException e) {
         request.setAttribute("errorMsg", "게시판이 존재하지 않습니다.");
         System.out.println(2);
      }catch (Exception e) {
         request.setAttribute("errorMsg", e.getMessage());
         System.out.println(3);
      }
      request.getRequestDispatcher(url).forward(request, response);
   }
   
}