package w3kindergarten.model.dto;

public class BoardDTO {
	private int boardNo;
	private String title;
	private String content;
	private String userName;
	private String createDate;
	private String modifyDate;
	private int readNum;

	public BoardDTO() {
		super();
	}
	
	

	public BoardDTO(int boardNo, String title, String content) {
		this.boardNo = boardNo;
		this.title = title;
		this.content = content;
	}



	public BoardDTO(String title, String content, String userName) {
		this.title = title;
		this.content = content;
		this.userName = userName;
	}

	public BoardDTO(int boardNo, String title, String content, String userName, String createDate, String modifyDate,
			int readNum) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.content = content;
		this.userName = userName;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.readNum = readNum;
	}

	
	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}

	public int getReadNum() {
		return readNum;
	}

	public void setReadNum(int readNum) {
		this.readNum = readNum;
	}



	
	
	




	
	
}

