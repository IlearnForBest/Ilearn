package com.ilearn.controller;

import com.ilearn.bean.CategoryEntity;
import com.ilearn.dao.CategoryDao;
import com.ilearn.dao.RecommendDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by sl on 16-4-19.
 */
@Controller
@RequestMapping("/recommend")
public class RecommendController {

    @Autowired
    @Qualifier("recommendDao")
    private RecommendDao recommendDao;

    @Autowired
    @Qualifier("categoryDao")
    private CategoryDao categoryDao;


    @RequestMapping(value = "/{id}" , method = RequestMethod.GET)
    public String recommendBaseItems(@PathVariable("id") int id , Model model){


        model.addAttribute("recommendResources" ,
                recommendDao.getRecommendByItems(id,6));
        return "index";
    }

    @RequestMapping(value = "/user/{id}" , method = RequestMethod.GET)
    public String recommendBaseUser(@PathVariable("id") int id , Model model){


        model.addAttribute("recommendResources" ,
                recommendDao.getRecommendByItems(id,6));
        return "index";
    }

}
