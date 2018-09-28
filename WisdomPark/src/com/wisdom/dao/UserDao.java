package com.wisdom.dao;

import java.util.Date;
import java.util.List;

import com.wisdom.beans.Policy;
import com.wisdom.beans.User;
import com.wisdom.beans.User;
import com.wisdom.util.BeanHandler;
import com.wisdom.util.BeanListHandler;

public class UserDao extends BaseDao {
	
/*	查找一人*/
	public User validate(String name,String password,String role ) {
		String sql = "select *from  User  where name=? and password=?  and role=?";
		
		return (User)find(sql, new Object[]{name,password,role }, new BeanHandler(User.class));//这里是BeanHandler
		
	}
	
	
	
	public User check(String name,String password,String role) {
		String sql = "select *from  User  where name=? and password=? and role=? ";
		
		return (User)find(sql, new Object[]{name,password,role}, new BeanHandler(User.class));//这里是BeanHandler
		
	}
	

	public List<User> findAllUser() {
		 List<User> Userlist=null;
		String sql ="select * from User";
		Userlist=(List<User>)find(sql, null,new BeanListHandler(User.class));
		return Userlist;
	}	
	

	
	
	public List<User> findAllRo(String role) {
		if (role != null && ! "".equals(role)) {
			String sql ="select * from User where role= ?";
		return (List<User>)find(sql, new Object[]{role}, new BeanListHandler(User.class));
		}
		else{
			return findAllUser();
		}
	}
	public void addUser(String name,String password ,String email ,String phone ,String role) {
		String sql = "insert into User(name ,password ,email ,phone ,role)"+
				" values (?,?,?,?,?)";
		
		update(sql, new Object[]{name,password,email,phone,role});
	}
	
	public void updatUserRole(String role,String name) {
		String sql = "update User set role=? where name=?";
		
		update(sql, new Object[]{role,name});
	}
	
	
	
	public User getOneUser(String  name) {
		String sql = "select *from  User  where name=? ";	
		return (User)find(sql, new Object[]{name}, new BeanHandler(User.class));//这里是BeanHandler
		
	}	
	public void deleteUser(String name ){
		String sql="delete from User where name= ?";
		update(sql, new Object[]{name});

	}
	public User getOneUserBynameByr(String name,String role) {
		String sql = "select *from  User  where name=? and role=? ";
		
		return (User)find(sql, new Object[]{name,role}, new BeanHandler(User.class));//这里是BeanHandler
		
	}
	
	
	
		
	
			
	public void updateUser(String name,String password ,String email ,String phone ,String role){
		String sql = "update User set password=?,email=?,phone=? role=? where name=?";
			
		update(sql, new Object[]{name,password,email,phone,role});
	
	}
	
	
	
	
}
