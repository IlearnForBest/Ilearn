package com.ilearn.dao;

import com.ilearn.bean.CateBean;
import com.ilearn.bean.CategoryEntity;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.ContextHierarchy;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.List;


/**
 * Created by sl on 16-2-24.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration(value = "src/main/webapp")
@ContextHierarchy({
        @ContextConfiguration(name = "parent", locations = "classpath*:conf/spring.xml"),
        @ContextConfiguration(name = "child", locations = "classpath*:conf/springmvc.xml")
})

public class CategoryDaoTest {

    @Autowired
    @Qualifier("categoryDao")
    private CategoryDao categoryDao;

    @Test
    public void testGetSecondCategory(){

//        List<String> firstcates = categoryDao.getFirstCategory();

        List<CateBean> secondCategory = categoryDao.getSecondCategory();

        Assert.assertNotNull(secondCategory);

        for(CateBean cateBean : secondCategory){
            System.out.println(cateBean.getCate_name());
            List<String> cate2s = cateBean.getCate2s();
            for(String  cate2 : cate2s){
                System.out.println(cate2);
            }
            System.out.println();

        }


    }






}
