package com.pm.model;

public class Paging {

	/**
	 * currentPage		当前页（传入）
	 * pageSize			每页记录行数（传入）
	 * startIndex		记录起始索引
	 * sumRow			记录总行数（handler传入）
	 * sumPage			总页数
	 */
	private int currentPage;
	private int pageSize;
	private int startIndex;
	private int sumRow;
	private int sumPage;
	
	
	/**
	 * 在controller层方法里调用此构造方法实例化，然后放入ModelAndView传给jsp。
	 * @param sumRow
	 * @param currentPage
	 * @param pageSize
	 */
	public Paging(int sumRow, int currentPage, int pageSize) {
		this.sumRow = sumRow;
		this.currentPage = currentPage;
		this.pageSize = pageSize;
		this.startIndex = (currentPage - 1) * pageSize;
		this.sumPage = sumRow / pageSize;
		if(sumRow % pageSize > 0) {
			this.sumPage++;
		}
	}


	
	public int getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}


	public int getPageSize() {
		return pageSize;
	}


	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}


	public int getStartIndex() {
		return startIndex;
	}


	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}


	public int getSumRow() {
		return sumRow;
	}


	public void setSumRow(int sumRow) {
		this.sumRow = sumRow;
	}


	public int getSumPage() {
		return sumPage;
	}


	public void setSumPage(int sumPage) {
		this.sumPage = sumPage;
	}
	
	
}
