package cn.org.hrbust.dto;

import java.util.List;

public class HouseDTO {
	private List<?> resultList;
	private String errorMsg;
	private String result;

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

	public List<?> getResultList() {
		return this.resultList;
	}

	public void setResultList(List<?> resultList) {
		this.resultList = resultList;
	}
}