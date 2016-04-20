package com.ilearn.dao;

import com.ilearn.bean.CollectionEntity;
import com.ilearn.bean.UserEntity;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 * Created by tsj on 16-4-20.
 */
@Repository("collectionDao")
public class CollectionDao extends BaseDao{
    public CollectionEntity getById(int coid){
        return get(CollectionEntity.class,coid);
    }

    public List<CollectionEntity> getCollectionByUid(int uid){
        String hql = "from CollectionEntity as collection where userid='"+uid+"'";
        Query query = query(hql);
        List<CollectionEntity> collections = query.list();
        return collections;
    }
}
