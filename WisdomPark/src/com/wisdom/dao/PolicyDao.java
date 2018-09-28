package com.wisdom.dao;

import java.util.Date;
import java.util.List;

import javax.xml.crypto.Data;





import com.wisdom.beans.Policy;
import com.wisdom.beans.Student;
import com.wisdom.util.BeanHandler;
import com.wisdom.util.BeanListHandler;

public class PolicyDao extends BaseDao {

	@SuppressWarnings("unchecked")
	public List<Policy> findAllPolicy() {
		 List<Policy> Policylist=null;
		String sql ="select * from Policy";
		Policylist=(List<Policy>)find(sql, null,new BeanListHandler(Policy.class));
		return Policylist;
	}
	
	
	public void addPolicy(String title, Integer  pushPosition,String content,Date publishtime,Integer clicknum) {
		String sql = "insert into Policy(title,pushPosition,content,publishtime,clicknum)"+
				" values (?,?,?,?,?)";
		
		update(sql, new Object[]{title,pushPosition,content,publishtime,clicknum});
	}
	
	@SuppressWarnings("unchecked")
	public List<Policy> findAllPolicy1() {
		 List<Policy> Policylist=null;
		String sql ="select * from Policy where  pushPosition=1";
		Policylist=(List<Policy>)find(sql, null,new BeanListHandler(Policy.class));
		return Policylist;
	}
	
	public Policy getallPolicy1(Integer policyId) {
		String sql = "select *from  Policy  where policyId=? ";
		
		return (Policy)find(sql, new Object[]{policyId}, new BeanHandler(Policy.class));//这里是BeanHandler
		
	}
	
	public void updatePolicy(String title, Integer  pushPosition,String content,int policyId) {
		String sql = "update Policy set title=?,pushPosition=?,content=? where policyId=?";
			
		update(sql, new Object[]{title,pushPosition,content,policyId});
		
	}
	
	public void updatePolicyclick(int policyId,int clicknum) {
		String sql = "update Policy set clicknum=? where policyId=?";
			
		update(sql, new Object[]{clicknum,policyId});
		
	}
	
	
/* *修改时，如果发生错误，就是说参数里面有int,double,float等类型，可能会发生错误，就把sql改成下列形式
String sql = "update Policy set name='"+name+"',age="+age+",sex='"+sex+"',birth=?,fangxiang=?  where xuehao=?";
		
		update(sql, null);

	}*/
	
	
	
	public List<Policy> findPolicyBytitle(String title) {
		if (title != null && ! "".equals(title)) {
		String sql ="select * from Policy where title = ?";
		return (List<Policy>)find(sql, new Object[]{title}, new BeanListHandler(Policy.class));
		}
		else{
			return findAllPolicy();
		}
		
	}
	
	public Policy getOnePolicy(int policyId) {
	
		String sql ="select * from Policy where title = ?";
		return (Policy)find(sql, new Object[]{policyId}, new BeanHandler(Policy.class));//这里是BeanHandler
		
		
	}
	
	
	

	
	
	public void deletePolicy(Integer policyId ){
		String sql="delete from Policy where policyId= ?";
		update(sql, new Object[]{policyId});
	}
	
	
}
