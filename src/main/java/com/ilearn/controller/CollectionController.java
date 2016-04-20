package com.ilearn.controller;

import com.ilearn.bean.CollectionEntity;
import com.ilearn.bean.LogEntity;
import com.ilearn.bean.ResourcesEntity;
import com.ilearn.bean.UserEntity;
import com.ilearn.dao.CollectionDao;
import com.ilearn.dao.LogDao;
import com.ilearn.dao.ResourcesDao;
import com.ilearn.dao.UserDao;
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

    @Autowired
    @Qualifier("userDao")
    private UserDao userDao;

    @Autowired
    @Qualifier("collectionDao")
    private CollectionDao collectionDao;

    @Autowired
    @Qualifier("logDao")
    private LogDao logDao;


    @RequestMapping(value = "/getcollection" , method = RequestMethod.GET)
    public String getCollection(HttpSession session){
        List<ResourcesEntity> resources = new ArrayList<ResourcesEntity>();
        List<CollectionEntity> collecitons = new ArrayList<CollectionEntity>();
        UserEntity user = (UserEntity)session.getAttribute("loginUser");
        collecitons = collectionDao.getCollectionByUid(user.getId());
        for(CollectionEntity collection:collecitons){
            resources.add(resourcesDao.getById(collection.getResourceid()));
        }
        session.setAttribute("collection",resources);
        return "user/user-collection";
    }

    @RequestMapping(value = "/getrecord" , method = RequestMethod.GET)
    public String getRecord(HttpSession session){
        UserEntity user = (UserEntity)session.getAttribute("loginUser");
        List<ResourcesEntity> resources = new ArrayList<ResourcesEntity>();
        List<LogEntity> logs = new ArrayList<LogEntity>();
        logs = logDao.getLogByUid(user.getId());
        for(LogEntity l:logs){
            resources.add(resourcesDao.getById(l.getResourceid()));
        }
        session.setAttribute("logs",resources);
        return "user/user-do";
    }

    @RequestMapping(value = "/getinfo" , method = RequestMethod.GET)
    public String getInfo(HttpSession session){
        UserEntity olduser = (UserEntity)session.getAttribute("loginUser");
        UserEntity newuser = userDao.getById(olduser.getId());
        session.setAttribute("loginUser",newuser);
        return "user/user-info";
    }

    @RequestMapping(value = "/getchange" , method = RequestMethod.GET)
    public String getChange(HttpSession session){
        return "user/user-change";
    }

    @RequestMapping(value = "/getpassword" , method = RequestMethod.GET)
    public String getPassword(HttpSession session){
        return "user/user-password";
    }



    @RequestMapping(value = "/changeinfo" , method = RequestMethod.POST)
    public String changeInfo(HttpSession session ,String changeusername,String changeemail,String changetelephone){
        UserEntity user = (UserEntity)session.getAttribute("loginUser");
        userDao.updateInfo(user.getUserName(),changeusername,changeemail,changetelephone);
        return "redirect:/collection/getinfo";
    }

    @RequestMapping(value = "/changepassword" , method = RequestMethod.POST)
    public String changePassword(HttpSession session ,String oldpassword,String newpassword){
        userDao.updatePassword(oldpassword,newpassword);
        return "redirect:/collection/getinfo";
    }

}
