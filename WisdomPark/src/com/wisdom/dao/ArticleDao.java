package com.wisdom.dao;

import java.util.List;

import com.wisdom.beans.Article;
import com.wisdom.beans.Enterapply;
import com.wisdom.util.BeanHandler;
import com.wisdom.util.BeanListHandler;

/*
 	文章的业务处理类
 */
public class ArticleDao extends BaseDao {
	// 获取所有话题
	@SuppressWarnings("unchecked")
	public List<Article> findArticles() {
		String sql = "select * from forum_article_table where parentArticleId is null";
		/**
		 *第一个参数：sql
		 *第二个参数：参数值
		 *第三个参数：ResultSetHandler对象
		 *
		 *获取Article类的Class对象
		 *	方式一：Class.forName("完整的类名");(最常用)
		 *	方式二：对象名.getClass();
		 *	方式三：类名.Class
		 **/
		List<Article> articles = (List<Article>) find(sql, null, new BeanListHandler(Article.class)); 
		
		return articles;
	}
	
	//发表话题
	public void addArticle(String title, String content, String createPerson) {
		String sql = "insert into forum_article_table (title,content,createTime,createPerson)"+
				" values (?,?,now(),?)";
		
		update(sql, new Object[]{title, content, createPerson});
	}
	

	
	//根据话题编号查询该话题的所有评论
	@SuppressWarnings("unchecked")
	public List<Article> findArticleReplys(String id) {
		String sql = "select * from forum_article_table where parentArticleId = ?";
		
		List<Article> articleReplys = (List<Article>)find(sql, new Object[]{id}, new BeanListHandler(Article.class));
		return articleReplys;
	}

	//添加回复
	public void addArticleReply(String content, String parentArticleId, String createPerson ,String status) {
		String sql = "insert into forum_article_table (content,parentArticleId,createPerson,createTime,status)"
				+ " values(?,?,?,now(),?)";
		
		update(sql, new Object[]{content,parentArticleId,createPerson,status});
	}

	public Article findArticle(String id) {
		String sql = "select * from forum_article_table where id = ? ";
		return (Article) find(sql, new Object[]{id}, new BeanHandler(Article.class));
	}
	
	
	
	public List<Article> findAll() {
		 List<Article> Articlelist=null;
		String sql ="select * from forum_article_table  order by createTime desc";
		Articlelist=(List<Article>)find(sql, null,new BeanListHandler(Article.class));
		return Articlelist;
	}
	
	public void updateArticleReplyAmount(String articleId) {
		String sql = "update forum_article_table set totalReply = totalReply + 1 where id = ?";
		update(sql, new Object[]{articleId});
		
	}
	
	/*
	根据标题内容查询话题
	*/
	public List<Article> findArticles(String title) {
		if (title != null && ! "".equals(title)) {
			String sql = "select * from forum_article_table where parentArticleId is null and title like ?";
			
			return (List<Article>)find(sql, new Object[]{'%'+title+'%'}, new BeanListHandler(Article.class));
		} else {
			return findArticles();
		}
	}

	public Article getArticle(String articleId) {
		String sql = "select * from forum_article_table  where id = ?";
		
	return (Article)find(sql, new Object[]{articleId}, new BeanHandler(Article.class));
	}
	
	public void UpdateArticle(String articleId,String title,String content) {
		String sql = "update forum_article_table set title=?,content=? where id = ?";
		
		update(sql, new Object[]{title,content,articleId});
	}
	
	public void DeleteArticle(String articleId){
		String sql="delete from forum_article_table where id=?";
		update(sql, new Object[]{articleId});
	}
	
}
