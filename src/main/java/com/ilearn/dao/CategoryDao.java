package com.ilearn.dao;

import com.ilearn.bean.CateBean;
import com.ilearn.bean.CategoryEntity;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
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



    public List<CateBean> getSecondCategory(String firstCate){


        List<CateBean> cateBeans = new ArrayList<>();

        String hql = "select distinct cate.category2 from CategoryEntity as cate where cate.category1=?";
        Query query = query(hql);
        query.setString(0, firstCate);
        List<String> cate2s = query.list();

        for(String cate2 : cate2s){

            CateBean cateBean = new CateBean();
            cateBean.setCate2_name(cate2);
            String hql1 = "from CategoryEntity as cate1 where cate1.category2='"+cate2+"'";
            Query query1 = query(hql1);
//            query.setString(0, cate2);
            List<CategoryEntity> categoryEntities =  query1.list();
            cateBean.setCate3_names(categoryEntities);
            cateBeans.add(cateBean);
        }

        return cateBeans;

    }

}
