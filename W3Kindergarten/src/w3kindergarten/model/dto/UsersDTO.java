package w3kindergarten.model.dto;

public class UsersDTO {
	private int id;
	private String userName;
	private String password;
	private String email;
	private String nickName;
	private String phone;
	private String createDate;
	private String modifyDate;
	private int permission;	// 1: 관리자, 2: 사용자
//	private int score;
//	private String rank;
	
	//회원가입 / 회원정보수정
	public UsersDTO(String userName, String password, String email, String nickName, String phone) {
		super();
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.nickName = nickName;
		this.phone = phone;
	}

	public UsersDTO(int id, String userName, String password, String email, String nickName, String phone) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.nickName = nickName;
		this.phone = phone;
	}

	public UsersDTO(int id, String userName, String password, String email, String nickName, String phone,
			String modifyDate) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.nickName = nickName;
		this.phone = phone;
		this.modifyDate = modifyDate;
	}

	public UsersDTO(int id, String userName, String password, String email, String nickName, String phone,
			String createDate, String modifyDate, int permission) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.nickName = nickName;
		this.phone = phone;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.permission = permission;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
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

	public int getPermission() {
		return permission;
	}

	public void setPermission(int permission) {
		this.permission = permission;
	}

	

	
}
