package cn.org.hrbust.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User implements Serializable {
	private static final long serialVersionUID = 9107136639670248884L;
	private Integer userId;
	private String userName;
	private String userPassword;
	private String userTel;

	public User() {
	}

	public User(Integer userId, String userName, String userPassword,
			String userTel) {
		this.userId = userId;
		this.userName = userName;
		this.userPassword = userPassword;
		this.userTel = userTel;
	}

	@Id
	@Column(name = "user_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	@Column(name = "user_name")
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "user_password")
	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	@Column(name = "user_tel")
	public String getUserTel() {
		return this.userTel;
	}

	public void setUserTel(String userTel) {
		this.userTel = userTel;
	}

	public static long getSerialversionuid() {
		return 9107136639670248884L;
	}

	public String toString() {
		return "User [userId=" + this.userId + ", userName=" + this.userName
				+ ", userPassword=" + this.userPassword + ", userTel="
				+ this.userTel + "]";
	}
}