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

        List<CateBean> cateBeans = categoryDao.getSecondCategory("IT/互联网");

        Assert.assertNotNull(cateBeans);

        for(CateBean cateBean : cateBeans){
            System.out.println(cateBean.getCate2_name());
            List<CategoryEntity> cate3s = cateBean.getCate3_names();
            for(CategoryEntity cate3 : cate3s){
                System.out.println(cate3.getCateName());
            }
            System.out.println();

        }


    }






}
