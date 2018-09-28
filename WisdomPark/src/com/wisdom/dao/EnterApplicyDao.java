package com.wisdom.dao;

import java.util.Date;
import java.util.List;

import javax.xml.crypto.Data;







import com.wisdom.beans.Enterapply;
import com.wisdom.beans.Policy;
import com.wisdom.beans.Student;
import com.wisdom.util.BeanHandler;
import com.wisdom.util.BeanListHandler;

public class EnterApplicyDao extends BaseDao {

	@SuppressWarnings("unchecked")
	public List<Enterapply> findAllEnterApply() {
		 List<Enterapply> EnterApplylist=null;
		String sql ="select * from Enterapply";
		EnterApplylist=(List<Enterapply>)find(sql, null,new BeanListHandler(Enterapply.class));
		return EnterApplylist;
	}
	
	public void addEnterApply( String cmpid,String name,String simname,String type,String capital,String coveracreage,String remark,String ispass) {
		String sql = "insert into EnterApply (cmpid,name,simname,type,capital,coveracreage,remark,ispass)"+
				" values (?,?,?,?,?,?,?,?)";
		
		update(sql, new Object[]{cmpid,name,simname,type,capital,coveracreage,remark,ispass});
	}
	
	
	public Enterapply getOneEnterApply(String cmpid) {
		String sql = "select *from  EnterApply  where cmpid=? ";
		
		return (Enterapply)find(sql, new Object[]{cmpid}, new BeanHandler(Enterapply.class));//这里是BeanHandler
		
	}
	
	public void updateEnterApply(String cmpid,String ispass) {
		String sql = "update EnterApply set ispass=?  where cmpid=?";
		update(sql, new Object[]{cmpid,ispass});
		
/*
*修改时，如果发生错误，就是说参数里面有int,double,float等类型，可能会发生错误，就把sql改成下列形式
String sql = "update EnterApply set name='"+name+"',age="+age+",sex='"+sex+"',birth=?,fangxiang=?  where cmpId=?";
		
		update(sql, null);
*/
	}
	
	public void deleteEnterApply(String cmpid ){
		String sql="delete from EnterApply where cmpid= ?";
		update(sql, new Object[]{cmpid});

	
	}
}
