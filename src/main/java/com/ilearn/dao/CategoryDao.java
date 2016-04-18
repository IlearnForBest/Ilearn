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


    public List<CategoryEntity> getFirstCategory(){
        String hql = "from CategoryEntity as cate where cate.category1Id is null";
        Query query = query(hql);
        return query.list();
    }




    public List<CategoryEntity> getAllOfCategory2(){
        String hql = "from CategoryEntity as cate where "+
                "cate.category2Id is null and cate.categoey1Id is not null";

        Query query = query(hql);
        return query.list();
    }

    public List<CategoryEntity> getAllOfCategory3(){
        String hql = "from CategoryEntity as cate where "+
                "cate.category2Id is not null and cate.categoey1Id is not null";

        Query query = query(hql);
        return query.list();
    }



    public List<CategoryEntity> getChildrenCate(int id){

        CategoryEntity category = getById(id);
        String hql;

        if(category.getCategory1Id()==null){//categoey是一级目录
            hql = "from CategoryEntity as cate where cate.category1Id =?";
        }else {
            hql = "from CategoryEntity as cate where cate.category2Id =?";
        }
        Query query = query(hql);
        query.setInteger(0, id);

        return query.list();

    }



    public List<CateBean> getSecondCategory(){

        List<CateBean> cateBeans = new ArrayList<>();
        List<CategoryEntity> cate1s = getFirstCategory();

        for(CategoryEntity cate1 : cate1s){

            CateBean cateBean = new CateBean();

            List<CateBean> cate2Beans = new ArrayList<>();
            //cate2Beans = cateBean.getChildren();

            cateBean.setCate_name(cate1.getCateName());
            cateBean.setCate_id(cate1.getCid());


            String hql = "from CategoryEntity as cate where cate.category1Id='"
                    +cate1.getCid()+"' and cate.category2Id is null";
            Query query = query(hql);
            List<CategoryEntity> cate2s =  query.list();
            cateBean.setCate2s(cate2s);

            for(CategoryEntity cate2 : cate2s){

//                System.out.println("cate2: "+cate2);
                CateBean cate2Bean = new CateBean();

                cate2Bean.setCate2s(getThirdCategory(cate2.getCateName()));
                cate2Bean.setCate_name(cate2.getCateName());
                cate2Bean.setCate_id(cate2.getCid());
                cate2Beans.add(cate2Bean);

            }


            cateBean.setChildren(cate2Beans);
            cateBeans.add(cateBean);
        }

        return cateBeans;

    }

    public List<CategoryEntity> getThirdCategory(String cate2){

        String hql = "from CategoryEntity as cate where cate.category2='"+cate2+"'";
        Query query = query(hql);
        List<CategoryEntity> cate3s =  query.list();

        return cate3s;

    }

}
