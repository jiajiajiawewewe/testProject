package com.wisdom.dao;

import java.util.List;

import com.wisdom.beans.Student;
import com.wisdom.util.BeanHandler;
import com.wisdom.util.BeanListHandler;

public class StudentDao extends BaseDao {

	public List<Student> findAllStudent() {
		 List<Student> Studentlist=null;
		String sql ="select * from Student";
		Studentlist=(List<Student>)find(sql, null,new BeanListHandler(Student.class));
		return Studentlist;
	}
	
	public void addStudent( String xuehao,String name, int age,String sex,String birth,String fangxiang) {
		String sql = "insert into Student (xuehao,name,age,sex,birth,fangxiang)"+
				" values (?,?,?,?,?,?)";
		
		update(sql, new Object[]{xuehao,name,age,sex,birth,fangxiang});
	}
	
	
	public Student getOneStudent(String xuehao) {
		String sql = "select *from  Student  where xuehao=? ";
		
		return (Student)find(sql, new Object[]{xuehao}, new BeanHandler(Student.class));//这里是BeanHandler
		
	}
	
	public void updateStudent(String xuehao,String name, int age,String sex,String birth,String fangxiang) {
		String sql = "update Student set name=?,age=?,sex=?,birth=?,fangxiang=?  where xuehao=?";
		
		update(sql, new Object[]{name,age,sex,birth,fangxiang,xuehao});
		
/*
 *修改时，如果发生错误，就是说参数里面有int,double,float等类型，可能会发生错误，就把sql改成下列形式
String sql = "update Student set name='"+name+"',age="+age+",sex='"+sex+"',birth=?,fangxiang=?  where xuehao=?";
		
		update(sql, null);
*/
	}
	
	public void deleteStudent(String xuehao ){
		String sql="delete from Student where xuehao= ?";
		update(sql, new Object[]{xuehao});
	}
	
	
}
