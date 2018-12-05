package com.zhou.meishimeike.util;

import java.util.ArrayList;
import java.util.List;
/**
 * ---------------------------
 * @author Mr_zhou
 * TODO mysql分页对象封装
 * 2018年11月15日 上午9:11:10
 * ---------------------------
 * 	 	indexCount  sql_总数据条数
 * 		subStart    sql_查询开始位置
 * 	 	pageCount 	页面_总页面数量
 *	 	pageNo      页面_当前页面
 *		prvePage    页面_上一页id
 *		nextPage    页面_下一页id
 *		homePage    页面_首页
 *		endPage		页面_尾页
 *---------------------------
 *		使用说明
 *		1 PageUtil <T> pageUtil =new PageUtil<T> ();
 *		2 pageUtil.setThisPage(pageNo);		  pageNo 当前页面
		3 pageUtil.setIndexCount(indexCount); indexCount为数据总条数
 *---------------------------
 */
public class PageUtil <T>{
	
	/**
	 * 页面大小 10
	 */
	private Integer pageSize=10;
	
	private List <T> list;
	
	private Integer pageCount;
	
	private Integer indexCount;
	
	private Integer pageNo;
	
	private Integer prvePage;
	
	private Integer nextPage;
	
	private Integer homePage=1;
	
	private Integer endPage;
	
	private Integer subStart;
	

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer thisPages) {
		setSubStart(subStart==null?0:(pageNo-1<1)?0:(pageNo-1)*pageSize);	
		this.pageNo = thisPages;
	}

	public Integer getPrvePage() {
		return prvePage;
	}

	public void setPrvePage(Integer prvePage) {
		this.prvePage = prvePage;
	}

	public Integer getNextPage() {	 
		return nextPage;
	}

	public void setNextPage(Integer nextPage) {
		this.nextPage = nextPage;
	}

	public Integer getHomePage() {
		return 1;
	}

	public void setHomePage(Integer homePage) {
		this.homePage = homePage;
	}

	public Integer getEndPage() {
		return endPage;
	}

	public void setEndPage(Integer endPage) {
		this.endPage = endPage;
	}

	public Integer getSubStart() {
		return subStart;
	}

	public void setSubStart(Integer subStart) {
		this.subStart = subStart;
	}


	public  Integer getPagesize() {
		return pageSize;
	}

	public Integer getIndexCount() {
		return indexCount;
	}

	public void setIndexCount(Integer indexCount) {
		this.indexCount = indexCount;
		setPageCount((indexCount % pageSize==0)?indexCount/pageSize:indexCount/pageSize+1);
		setEndPage((indexCount % pageSize==0)?indexCount/pageSize:indexCount/pageSize+1);
		setSubStart(subStart==null?0:(pageNo-1<1)?0:(pageNo-1)*pageSize);		
		setPrvePage((pageNo-1<=0)?1:pageNo-1);
		setNextPage((pageNo+1)>endPage?pageNo:pageNo+1);
	}

	public Integer getPageCount() {
		return pageCount ;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

	

	@Override
	public String toString() {
		return "PageUtil [pageSize=" + pageSize + ", list=" + list + ", pageCount=" + pageCount + ", indexCount="
				+ indexCount + ", thisPage=" + pageNo + ", prvePage=" + prvePage + ", nextPage=" + nextPage
				+ ", homePage=" + homePage + ", endPage=" + endPage + ", subStart=" + subStart + ", subEnd=" 
				+ "]";
	}

	public List <T> getList() {
		return list;
	}

	public void setList(List <T> list) {
		this.list = list;
	}
	
	public PageUtil() {
		list=new ArrayList<>();
	}
}
