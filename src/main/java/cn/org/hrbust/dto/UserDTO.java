package cn.org.hrbust.dto;

import java.util.List;

import cn.org.hrbust.entity.User;

public class UserDTO {
	private String result;
	private String errorMsg;
	private List<User> resultList;

	public String getResult() {
		return this.result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getErrorMsg() {
		return this.errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}

	public List<User> getResultList() {
		return this.resultList;
	}

	public void setResultList(List<User> resultList) {
		this.resultList = resultList;
	}
}