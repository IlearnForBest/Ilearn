package com.ilearn.controller;

import com.ilearn.bean.ResourcesEntity;
import com.ilearn.bean.UserEntity;
import com.ilearn.dao.ResourcesDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by sl on 16-4-19.
 */
@Controller
@RequestMapping("/collection")
public class CollectionController {

    @Autowired
    @Qualifier("resourcesDao")
    private ResourcesDao resourcesDao;

    @RequestMapping(value = "/getcollection" , method = RequestMethod.GET)
    public String getCollection(HttpSession session){
        UserEntity user = (UserEntity)session.getAttribute("loginUser");
        List<ResourcesEntity> resources = new ArrayList<ResourcesEntity>();
        String[]  collections = new String[5];
        collections = user.getArrCollectionId().split(",");
        for(String collection:collections){
            System.out.println(collection+"2543523526526");
            resources.add(resourcesDao.getById(Integer.parseInt(collection)));
        }
        session.setAttribute("collection",resources);
        return "user/user-collection";
    }
}
