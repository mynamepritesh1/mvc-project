package com.user;

import java.util.Date;

public class Post {
	private int id;
	private String title;
	private String content;
	private Date pdate;
	private UserDetails user;

	public Post(int id, String title, String content, Date pdate, UserDetails user) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.pdate = pdate;
		this.user = user;
	}

	public Post() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}

	public Date getPdate() {
		return pdate;
	}

	public UserDetails getUser() {
		return user;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}

	public void setUser(UserDetails user) {
		this.user = user;
	}

}
