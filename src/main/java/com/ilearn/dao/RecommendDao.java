package com.ilearn.dao;

import com.ilearn.bean.CategoryEntity;
import com.ilearn.bean.ResourcesEntity;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by sl on 16-4-18.
 */
@Repository("recommendDao")
public class RecommendDao extends BaseDao{

    @Autowired
    @Qualifier("categoryDao")
    private CategoryDao categoryDao;

    public List<ResourcesEntity> getRecommendByItems(int id , int recommendNumber){

        String coloum;

        CategoryEntity category = categoryDao.getById(id);
        if(category.getCategory1Id()==null){
            coloum = "category1Id";
        }else if(category.getCategory2Id()==null){
            coloum = "category2Id";
        }else{
            coloum = "category3Id";
        }
        String hql = "from ResourcesEntity as resources where resources."+coloum+"=? " +
                "order by resources.recommendGrade desc";
        Query query = query(hql);
        query.setInteger(0, id);
        List<ResourcesEntity> results = query.list().subList(0,recommendNumber-1);
        return results;

    }

    public List<ResourcesEntity> getRecommendByUser(int id){
        String hql = "from RecommendEntity as resources where resources.id=? " +
                "order by resources.recommendGrade desc";
        Query query = query(hql);
        query.setInteger(0, id);

        return query.list();
    }


}
