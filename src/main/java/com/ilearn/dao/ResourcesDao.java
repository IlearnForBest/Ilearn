package com.ilearn.dao;

import com.ilearn.bean.CategoryEntity;
import com.ilearn.bean.ResourcesEntity;
import com.ilearn.page.Page;
import com.ilearn.page.PageHandler;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import javax.print.DocFlavor;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by sl on 16-4-2.
 */
@Repository("resourcesDao")
public class ResourcesDao extends BaseDao {

    @Autowired
    @Qualifier("categoryDao")
    private CategoryDao categoryDao;

    @Autowired
    private PageHandler pageHandler;

    public ResourcesEntity getById(int rid){
        return get(ResourcesEntity.class, rid);
    }



    /**
     * 获取叶子结点下的所有资源(分页查询)
     */
    public Page<ResourcesEntity> getPageResourcesOfLeaf(int id , int pageNum){

        CategoryEntity category = categoryDao.getById(id);

        return PageQuery("cateName",category.getCateName(),pageNum);

    }


    public Page<ResourcesEntity> getPageResourcesOfCateName(String cateName , int pageNum){
        if(HQuery("category1" , cateName) != null){
            return PageQuery("category1" , cateName , pageNum);
        }else if(HQuery("category2" , cateName) != null){
            return PageQuery("category2" , cateName , pageNum);
        }else if(HQuery("cateName" , cateName) != null){
            return PageQuery("cateName" , cateName , pageNum);
        }else{
            return null;
        }
    }




    public Page<ResourcesEntity> queryByPage(int pageNum , int pageSize){
        String hql = "from ResourcesEntity as resources";

        Query query = query(hql);

        return pageHandler.getPage(pageNum,pageSize,
                ResourcesEntity.class,query);
    }



    public List<ResourcesEntity> getResourcesByCate(String category,int grade){
        String hql = "";
        if(grade==1){
            hql = "from ResourcesEntity as resources ";
        }
        else if(grade==2){
            hql = "from ResourcesEntity as resources where category1 = '"+category+"'";
        }
        else {
            hql = "from ResourcesEntity as resources where category2 = '"+category+"'";
        }
        Query query = query(hql);
        List<ResourcesEntity> resourcesEntities = query.list();
        return resourcesEntities;
    }


    /**
     * 查询
     * @param colume
     * @param value
     * @return
     */
    private List<ResourcesEntity> HQuery(String colume , String value){
        String hql = "from ResourcesEntity as resources where resources."+colume+"=?";
        Query query = query(hql);
        query.setString(0, String.valueOf(value));
        List<ResourcesEntity> results = query.list();
        return results;
    }


    /**
     * 分页查询
     * @param colume
     * @param value
     * @param pageNum
     * @return
     */
    private Page<ResourcesEntity> PageQuery(String colume , String value , int pageNum){
        String hql = "from ResourcesEntity as resources where resources."+colume+"=?";

        Query query = query(hql);
        query.setString(0, String.valueOf(value));

        return pageHandler.getPage(pageNum,20,
                ResourcesEntity.class,query);
    }

}
