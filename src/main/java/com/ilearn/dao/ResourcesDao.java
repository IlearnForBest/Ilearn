package com.ilearn.dao;

import com.ilearn.bean.ResourcesEntity;
import com.ilearn.page.Page;
import com.ilearn.page.PageHandler;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
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
    private PageHandler pageHandler;

    public ResourcesEntity getById(int rid){
        return get(ResourcesEntity.class, rid);
    }


    public void saveResource(int rid , String  title , String url , String imgurl,String category1
    ,String category2,int collection,int remark,int grade,double satisfaction,int join_number,
                             String source_web){

        ResourcesEntity resourcesEntity = new ResourcesEntity();

        resourcesEntity.setTitle(title);
        resourcesEntity.setUrl(url);
        resourcesEntity.setImgutl(imgurl);
        resourcesEntity.setCategory1(category1);
        resourcesEntity.setCategory2(category2);
        resourcesEntity.setCollection(collection);
        resourcesEntity.setRemark(remark);
        resourcesEntity.setGrade(grade);
        resourcesEntity.setSatisfaction(satisfaction);
        resourcesEntity.setJoin_number(join_number);
        resourcesEntity.setSource_web(source_web);
        save(resourcesEntity);

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
}
