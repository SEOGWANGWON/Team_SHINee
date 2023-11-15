package shinee.search;

public class User_info {
	
	
	private String user_id;
	private String user_name;
	private String user_nickname;
	private String user_password;
	private String email;
	private String phone_number;
	private String profile_img;
	
	public String getProfile_img() {
		return profile_img;
	}

	public void setProfile_img(String profile_img) {
		this.profile_img = profile_img;
	}

	
	public User_info() {};

	//Getter-------------------------------------
	
	public String getUser_id() {
		return user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public String getUser_nickname() {
		return user_nickname;
	}

	public String getUser_password() {
		return user_password;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone_number() {
		return phone_number;
	}

	//Setter-------------------------------------
	
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}

	
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	
	public void setEmail(String email) {
		this.email = email;
	}

	
	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}
	
}