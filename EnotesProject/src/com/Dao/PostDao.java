package com.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.user.Post;
import com.user.UserDetails;

public class PostDao {
	private Connection conn;

	public PostDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addNotes(String ti,String co,int ui) {

		boolean f = false;
		try {
			String query = "insert into post(title,content,uid) values(?,?,?)";

			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, ti);
			ps.setString(2, co);
			ps.setInt(3, ui);
			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();

		}
		return f;

	}

}
