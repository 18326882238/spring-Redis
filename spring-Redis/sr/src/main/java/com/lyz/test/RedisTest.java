package com.lyz.test;
import java.util.ArrayList;
import java.util.List;

import junit.framework.Assert;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;

import com.lyz.dao.IUserDao;
import com.lyz.entity.User;


/**
 * Redis测试类
 * @author liuyazhuang
 *
 */
@ContextConfiguration(locations = {"classpath*:applicationContext.xml"})
public class RedisTest extends AbstractJUnit4SpringContextTests {
	
	@Autowired
	private IUserDao userDao;
	
	/**
	 * 新增
	 * <br>------------------------------<br>
	 */
	@Test
	public void testAddUser() {
		User user = new User();
		user.setId("user1");
		user.setName("liuyazhuang");
		boolean result = userDao.add(user);
		Assert.assertTrue(result);
	}
	
	/**
	 * 批量新增 普通方式
	 * <br>------------------------------<br>
	 */
	@Test
	public void testAddUsers1() {
		List<User> list = new ArrayList<User>();
		for (int i = 10; i < 50000; i++) {
			User user = new User();
			user.setId("user" + i);
			user.setName("liuyazhuang" + i);
			list.add(user);
		}
		long begin = System.currentTimeMillis();
		for (User user : list) {
			userDao.add(user);
		}
		System.out.println(System.currentTimeMillis() -  begin);
	}
	
	/**
	 * 批量新增 pipeline方式
	 * <br>------------------------------<br>
	 */
	@Test
	public void testAddUsers2() {
		List<User> list = new ArrayList<User>();
		for (int i = 10; i < 1500000; i++) {
			User user = new User();
			user.setId("user" + i);
			user.setName("liuyazhuang" + i);
			list.add(user);
		}
		long begin = System.currentTimeMillis();
		boolean result = userDao.add(list);
		System.out.println(System.currentTimeMillis() - begin);
		Assert.assertTrue(result);
	}
	
	/**
	 * 修改
	 * <br>------------------------------<br>
	 */
	@Test
	public void testUpdate() {
		User user = new User();
		user.setId("user1");
		user.setName("liuyazhuang");
		boolean result = userDao.update(user);
		Assert.assertTrue(result);
	}
	
	/**
	 * 通过key删除单个
	 * <br>------------------------------<br>
	 */
	@Test
	public void testDelete() {
		String key = "user1";
		userDao.delete(key);
	}
	
	/**
	 * 批量删除
	 * <br>------------------------------<br>
	 */
	@Test
	public void testDeletes() {
		List<String> list = new ArrayList<String>();
		for (int i = 0; i < 10; i++) {
			list.add("user" + i);
		}
		userDao.delete(list);
	}
	
	/**
	 * 获取
	 * <br>------------------------------<br>
	 */
	@Test
	public void testGetUser() {
		String id = "user1";
		User user = userDao.get(id);
		Assert.assertNotNull(user);
		Assert.assertEquals(user.getName(), "liuyazhuang");
	}

	/**
	 * 设置userDao
	 * @param userDao the userDao to set
	 */
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}
}