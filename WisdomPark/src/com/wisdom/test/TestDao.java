package com.wisdom.test;

import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import com.wisdom.beans.Article;
import com.wisdom.beans.Enterapply;
import com.wisdom.beans.Notice;
import com.wisdom.beans.Policy;
import com.wisdom.beans.Student;
import com.wisdom.beans.User;
import com.wisdom.dao.ArticleDao;
import com.wisdom.dao.EnterApplicyDao;
import com.wisdom.dao.NoticeDao;
import com.wisdom.dao.PolicyDao;
import com.wisdom.dao.StudentDao;
import com.wisdom.dao.UserDao;

public class TestDao {

	
	static void findAll1(){
		
		
		NoticeDao dao=new NoticeDao();
		List<Notice> policylist=dao.findAllNotice1();
		for (Notice p : policylist) {
			System.out.println(p.getTitle());}
	}
	
	static void add(){
	
		
		
		
	}
		static void findOne(){
	EnterApplicyDao dao1=new 	EnterApplicyDao();
			
		/*	EnterApply policy=new EnterApply();
		*/
			
			dao1.deleteEnterApply("A1002");
			
			
	}
	
		static void deleOne(){
			EnterApplicyDao dao1=new EnterApplicyDao();
			
			dao1.deleteEnterApply("1");
			
	}
		

		static void daa(){
			 PolicyDao dao=new PolicyDao();
			Policy xPolicy=new Policy();
		List< Policy> PolSearchlist= dao.findAllPolicy1();
		for(Policy b:PolSearchlist){
			System.out.println(b.getTitle());
		}  
			
	}
		
		static void update1(){
		
		 PolicyDao dao=new PolicyDao();
		 int policyId=4;
		 int pushPosition=0;
		 String title="title";
			String content="content";	
		 Policy xPolicy=new Policy();
			dao.getOnePolicy(policyId);
			 System.out.println(pushPosition);
			 System.out.println(content);
			 System.out.println(title);
			 
		dao.updatePolicy(title, pushPosition, content,policyId);
			
			
			}
		
		static void serach(){
		
			 NoticeDao dao=new NoticeDao();
				String policyIdSearch="尔";
				
				List<Notice> PolSearchlist=dao.findNoticeBytitle(policyIdSearch);
				for(Notice b:PolSearchlist){
					System.out.println(b.getTitle());
				}  
		}          
		
		
		static void findAll2(){
			
			
			UserDao dao=new UserDao();
			List<User> userlist=dao.findAllRo("admin");
			int l1=userlist.size();
			List<User> userlist2=dao.findAllRo("admin2");
			int l2=userlist2.size();
			List<User> userlist3=dao.findAllRo("user");
			int l3=userlist3.size();
			System.out.println(l3);
		}
	
		
		
		
		static void update12(){
			NoticeDao dao2=new NoticeDao();
			List<Notice> noit1=dao2.findAllCl("策划部");
			int c1=0;
			for(int i=0;i<noit1.size();i++)
			{
				Notice u=noit1.get(i);
				int x=Integer.parseInt(u.getClicknum());
				c1=c1+x;
				
			}
				
			
			List<Notice> noit2=dao2.findAllCl("宣传部");
			int c2=0;
			for(int i=0;i<noit2.size();i++)
			{
				Notice u=noit2.get(i);
				int x=Integer.parseInt(u.getClicknum());
				c2=c2+x;
			}
			List<Notice> noit3=dao2.findAllCl("资讯部");
			int c3=0;
			for(int i=0;i<noit3.size();i++)
			{
				Notice u=noit3.get(i);
				int x=Integer.parseInt(u.getClicknum());
				c3=c3+x;
			}
			List<Notice> noit4=dao2.findAllCl("后勤部");
			int c4=0;
			for(int i=0;i<noit4.size();i++)
			{
				Notice u=noit4.get(i);
				int x=Integer.parseInt(u.getClicknum());
				c4=c4+x;
			}
			System.out.println(c1+c2+c3+c4);
				}
		
		
		static void findAll4(){
			
			UserDao dao=new UserDao();
		List<User> useSearchlist=dao.findAllRo("admin");
	System.out.println(useSearchlist.get(0).getName());
		}
		static void findAll3(){
			EnterApplicyDao dao=new EnterApplicyDao();
			List<Enterapply> enterlist=dao.findAllEnterApply();
			System.out.println(enterlist.get(1).getOfficenum());
			}
		
		static void addTest(){
			ArticleDao dao=new ArticleDao();
			
			//addStudent( String xuehao,String name, String age,String sex,String birth,String fangxiang)
			//dao.addArticleReply("fff", "1", "王大锤子","1");
			//dao.addStudent("122", "name22", "33", "鐢�,"ff", 鈥渏ava璇█鈥�;
			List<Article> enterlist= 	dao.findAll();
			System.out.println(enterlist.get(0).getCreateTime());
			
		}
		
		
public static void main(String[] args) {
	addTest();
}

}