package com.ilearn.dao;

import com.ilearn.bean.UserEntity;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.ContextHierarchy;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

/**
 * Created by sl on 16-4-16.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration(value = "src/main/webapp")
@ContextHierarchy({
        @ContextConfiguration(name = "parent", locations = "classpath*:conf/spring.xml"),
        @ContextConfiguration(name = "child", locations = "classpath*:conf/springmvc.xml")
})
public class UserDaoTest {

        @Autowired
        @Qualifier("userDao")
        private UserDao userDao;


        @Test
        public void testIsUserNameExit(){
                System.out.println("test..................." + userDao.isUserNameExit("test"));
        }

        @Test
        public void testSave(){
                UserEntity user;

                userDao.save("test","abc123","123@qq.com");

                user = userDao.getByName("test");

                Assert.assertNotNull(user);
        }

        @Test
        public void testGetByName(){
                UserEntity user = userDao.getByName("test");
                Assert.assertNotNull(user);
                Assert.assertEquals("123@qq.com",user.getEmail());
        }
}
