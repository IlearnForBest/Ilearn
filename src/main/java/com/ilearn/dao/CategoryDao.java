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



    public CategoryEntity getById(int id){
        return get(CategoryEntity.class,id);
    }


    public List<String> getFirstCategory(){
        String hql = "select distinct category1 from CategoryEntity";
        Query query = query(hql);
        return query.list();
    }



    public List<CateBean> getSecondCategory(){

        List<CateBean> cateBeans = new ArrayList<>();
        List<String> cate1s = getFirstCategory();

        for(String cate1 : cate1s){

            CateBean cateBean = new CateBean();

            List<CateBean> cate2Beans = new ArrayList<>();
            //cate2Beans = cateBean.getChildren();

            cateBean.setCate_name(cate1);


            String hql = "select distinct cate.category2 from CategoryEntity as cate where cate.category1='"+cate1+"'";
            Query query = query(hql);
            List<String> cate2s =  query.list();
            cateBean.setCate2s(cate2s);

            for(String cate2 : cate2s){

//                System.out.println("cate2: "+cate2);
                CateBean cate2Bean = new CateBean();

                cate2Bean.setCate2s(getThirdCategory(cate2));
                cate2Bean.setCate_name(cate2);
                cate2Beans.add(cate2Bean);

            }


            cateBean.setChildren(cate2Beans);
            cateBeans.add(cateBean);
        }

        return cateBeans;

    }

    public List<String> getThirdCategory(String cate2){

        String hql = "select cate.cateName from CategoryEntity as cate where cate.category2='"+cate2+"'";
        Query query = query(hql);
        List<String> cate3s =  query.list();

        return cate3s;

    }

}
