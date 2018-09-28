package com.wisdom.dao;

import java.util.Date;
import java.util.List;

import javax.xml.crypto.Data;





import com.wisdom.beans.Notice;
import com.wisdom.beans.Student;
import com.wisdom.beans.User;
import com.wisdom.util.BeanHandler;
import com.wisdom.util.BeanListHandler;
public class NoticeDao extends BaseDao {


	@SuppressWarnings("unchecked")
	public List<Notice> findAllNotice() {
		 List<Notice> Noticelist=null;
		String sql ="select * from Notice";
		Noticelist=(List<Notice>)find(sql, null,new BeanListHandler(Notice.class));
		return Noticelist;
	}
	
	@SuppressWarnings("unchecked")
	public List<Notice> findAllNotice1() {
		 List<Notice> Noticelist=null;
		String sql ="select * from Notice where pushposition=1";
		Noticelist=(List<Notice>)find(sql, null,new BeanListHandler(Notice.class));
		return Noticelist;
	}
	
	public void addNotice(String title, String  pushposition,String content,Date publishtime,String clicknum,String department,String publishman,String picture) {
		String sql = "insert into Notice(title,pushposition,content,publishtime,clicknum,department,publishman,picture)"+
				" values (?,?,?,?,?,?,?,?)";
		
		update(sql, new Object[]{title,pushposition,content,publishtime,clicknum,department,publishman,picture});
	}
	
	public Notice getOneNotice(Integer noticeid) {
		String sql = "select *from  Notice  where noticeid=? ";
		
		return (Notice)find(sql, new Object[]{noticeid}, new BeanHandler(Notice.class));//这里是BeanHandler
		
	}
	public List<Notice> findAllCl(String department) {
		if (department != null && ! "".equals(department)) {
			String sql ="select * from Notice where department= ?";
		return (List<Notice>)find(sql, new Object[]{department}, new BeanListHandler(Notice.class));
		}
		else{
			return findAllNotice();
		}
	}
	
	
	public void updateNotice(String title, String  pushposition,String content,Date publishtime,String department,String publishman,String picture,int noticeid) {
		String sql = "update Notice set title=?,pushposition=?,content=? ,publishtime=?,department=?,publishman=?,picture=? where noticeid=?";
			
		update(sql, new Object[]{title,pushposition,content,publishtime,department,publishman,picture,noticeid});
		
	}
	
	public void updateNoticeclick(int noticeid,int clicknum) {
		String sql = "update Notice set clicknum=? where noticeid=?";
			
		update(sql, new Object[]{clicknum,noticeid});
		
	}
	
	
/* *修改时，如果发生错误，就是说参数里面有int,double,float等类型，可能会发生错误，就把sql改成下列形式
String sql = "update Notice set name='"+name+"',age="+age+",sex='"+sex+"',birth=?,fangxiang=?  where xuehao=?";
		
		update(sql, null);

	}*/
	
	
	
	public List<Notice> findNoticeBytitle(String title) {
		if (title != null && ! "".equals(title)) {
		String sql ="select * from Notice where title = ?";
		return (List<Notice>)find(sql, new Object[]{title}, new BeanListHandler(Notice.class));
		}
		else{
			return findAllNotice();
		}
		
	}
	
	
	
	public void deleteNotice(Integer noticeid ){
		String sql="delete from Notice where noticeid= ?";
		update(sql, new Object[]{noticeid});
	}
	
	
}
