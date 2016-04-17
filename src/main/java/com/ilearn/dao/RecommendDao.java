package com.ilearn.dao;

import com.ilearn.bean.ResourcesEntity;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by sl on 16-4-18.
 */
@Repository("recommendDao")
public class RecommendDao extends BaseDao{

    public List<ResourcesEntity> getRecommendByItems(int cate3_id , int recommendNumber){

        String hql = "from ResourcesEntity as resources where resources.category3Id=? " +
                "order by resources.recommendGrade desc";
        Query query = query(hql);
        query.setInteger(0, cate3_id);
        List<ResourcesEntity> results = query.list().subList(0,recommendNumber-1);
        return results;

    }


}
