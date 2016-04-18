package com.ilearn.dao;

import com.ilearn.bean.ResourcesEntity;
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
 * Created by sl on 16-4-18.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration(value = "src/main/webapp")
@ContextHierarchy({
        @ContextConfiguration(name = "parent", locations = "classpath*:conf/spring.xml"),
        @ContextConfiguration(name = "child", locations = "classpath*:conf/springmvc.xml")
})
public class ResourcesDaoTest {


    @Autowired
    @Qualifier("resourcesDao")
    private ResourcesDao resourcesDao;


    @Test
    public void testGetPageResourcesOfLeaf(){
        List<ResourcesEntity> list = resourcesDao.getPageResourcesOfLeaf(842,1).getList();
        Assert.assertNotNull(list);
        for(ResourcesEntity res:list){
            System.out.println(res.getTitle());
        }
    }



}
