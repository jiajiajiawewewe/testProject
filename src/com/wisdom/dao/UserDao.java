package com.wisdom.dao;

import com.wisdom.beans.User;
import com.wisdom.util.BeanHandler;

public class UserDao extends BaseDao {
	
	
	public User validate(String name,String password,String role) {
		String sql = "select *from  User  where name=? and password=? and role=? ";
		
		return (User)find(sql, new Object[]{name,password,role}, new BeanHandler(User.class));//这里是BeanHandler
		
	}
}
