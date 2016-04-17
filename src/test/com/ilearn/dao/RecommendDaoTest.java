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
public class RecommendDaoTest {

    @Autowired
    @Qualifier("recommendDao")
    private RecommendDao recommendDao;

    @Test
    public void testGetRecommendByItems(){
        List<ResourcesEntity> resources = recommendDao.getRecommendByItems(462,10);

        Assert.assertNotNull(resources);

        for(ResourcesEntity res :resources){
            System.out.println(res.getTitle()+" "+res.getCollection()+" "+
                    res.getJoinNumber()+" "+res.getGrade()+" "+res.getRemark()
                    +" "+res.getSatisfaction()+" "+res.getRecommendGrade());
        }
        System.out.println("-------------------------------------------------------");
    }

}
