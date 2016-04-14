package com.ilearn.dao;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


/**
 * Created by sl on 16-4-10.
 */
@Repository("categoryDao")
public class CategoryDao extends BaseDao {




    public List<String> getFirstCategory(){
        String hql = "select category1 from CategoryEntity";
        Query query = query(hql);
        return query.list();
    }



//    private List<CategoryEntity> query(){
//
//    }

}
