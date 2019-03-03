package cn.org.hrbust.entity;

public class Page {
	private int startIndex;
	private int endIndex;
	public Page(int startIndex, int endIndex) {
		super();
		this.startIndex = startIndex;
		this.endIndex = endIndex;
	}
	public Page() {
		super();
	}
	public int getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	public int getEndIndex() {
		return endIndex;
	}
	public void setEndIndex(int endIndex) {
		this.endIndex = endIndex;
	}
	@Override
	public String toString() {
		return "Page [startIndex=" + startIndex + ", endIndex=" + endIndex + "]";
	}
	
	
}
