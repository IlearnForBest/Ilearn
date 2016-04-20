package com.ilearn.controller;

import com.ilearn.bean.CateBean;
import com.ilearn.dao.CategoryDao;
import com.ilearn.dao.RecommendDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/")
public class IndexController {


    @Autowired
    @Qualifier("categoryDao")
    private CategoryDao categoryDao;

    @Autowired
    @Qualifier("recommendDao")
    private RecommendDao recommendDao;


    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(HttpSession session,Model model) {

        List<CateBean> secondCates = categoryDao.getSecondCategory();

        session.setAttribute("secondcates",secondCates);
        model.addAttribute("recommend1" ,
                recommendDao.getRecommendByItems(838,5));
        model.addAttribute("recommend2" ,
                recommendDao.getRecommendByItems(839,5));

        return "index";
    }

}
