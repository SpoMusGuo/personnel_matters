package com.pm.model;

import java.util.List;

public class GpjPager<T> {

	// 每一页多少行
	private static final int pageSize = 2;
	// 总共多少行
	private int rowCount;
	// 开始的行数
	private int startIndex;
	// 总共多少页
	private int pageCount;
	// 当前是第几页
	private Integer nowPage;

	// 查询的关键字
	private String searchText;

	private List<Certificate> certificates;

	public GpjPager(Integer nowPage) {
		super();
		this.startIndex = (nowPage - 1) * pageSize;
		this.nowPage = nowPage;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	public int getNowPage() {
		return nowPage;
	}

	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public List<Certificate> getCertificates() {
		return certificates;
	}

	public void setCertificates(List<Certificate> certificates) {
		this.certificates = certificates;
	}

}
