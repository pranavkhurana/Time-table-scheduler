package front;

import java.util.Map;

import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import scheduler.inputdata;

public class User extends ActionSupport implements SessionAware {
	String username;
	String password;
	String email;
	String country;
	SessionMap<String, Object> sessionMap;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String loginCheck() {
		if (sessionMap.get("login") == "true")
			return SUCCESS;
		return ERROR;
	}

	public String login() {
		if (UserDao.validate(username, password)) {
			sessionMap.put("login", "true");
			sessionMap.put("user", this);
			return SUCCESS;

		} else {
			return ERROR;
		}
	}

	public String register() {
		if (UserDao.register(username, password, email, country)) {
			return SUCCESS;
		}
		return ERROR;
	}

	public void setSession(Map<String, Object> map) {
		// TODO Auto-generated method stub
		sessionMap = (SessionMap) map;
	}
	
	public String logout(){  
	    sessionMap.invalidate();  
	    return "success";  
	}  
}
