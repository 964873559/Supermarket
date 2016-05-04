package action;

import com.opensymphony.xwork2.ActionSupport;

import entity.User;

public class LoginAction extends ActionSupport {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	
	public String execute(){
		User u = new User();
		this.username = u.getUsername();
		this.password = u.getPassword();
		if(this.username.equals("littlewhite")&&this.password.equals("hyz123")){
			return SUCCESS;
		} else {
			return ERROR;
		}
	}
	
}
