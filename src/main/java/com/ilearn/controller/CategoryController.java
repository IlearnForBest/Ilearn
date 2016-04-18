package com.ilearn.controller;

import com.ilearn.dao.CategoryDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by sl on 16-4-10.
 */
@Controller
@RequestMapping("/category")
public class CategoryController {


    @Autowired
    @Qualifier("categoryDao")
    private CategoryDao categoryDao;


    @RequestMapping(value = "/{id}" , method = RequestMethod.GET)
    public String  getChildrenCategory(@PathVariable("id") int id , Model model){

        model.addAttribute("childrenCates",categoryDao.getChildrenCate(id));

        return "course";

    }

}
