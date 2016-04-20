package com.ilearn;

import com.ilearn.bean.ResourcesEntity;
import com.ilearn.dao.RecommendDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import java.util.List;

/**
 * Created by Administrator on 2016/4/19.
 */
public class test {



    public static void main(String args[]){
         RecommendDao recommendDao = new RecommendDao();

        List<ResourcesEntity> res = recommendDao.getRecommendByItems(838,4);
    }
}
