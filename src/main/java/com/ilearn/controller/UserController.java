package com.ilearn.controller;

import com.ilearn.bean.StatusMessage;
import com.ilearn.bean.UserEntity;
import com.ilearn.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Created by sl on 16-4-5.
 */
@Controller
@RequestMapping("/user")
public class UserController {


    @Autowired
    @Qualifier("userDao")
    private UserDao userDao;



    @RequestMapping(value = "/login" , method = RequestMethod.GET)
    public String login(){
        return "login";
    }

    @RequestMapping(value = "/register" , method = RequestMethod.GET)
    public String register(){
        return "register";
    }





    @ResponseBody
    @RequestMapping(value = "/register" , method = RequestMethod.POST)
    public StatusMessage register(String userName , String password,
                                  String password1 ,String email){

        System.out.println("111111111111111111  "+userName+" "+password+" "+password1
        +" "+email);

        StatusMessage statusMessage;
        String message = null;
        if(userDao.isUserNameExit(userName)){
            message = "该用户名已被注册";
            statusMessage = new StatusMessage(0,message);
        }else if(userDao.isEmailExit(email)){
            message = "该邮箱已被注册";
            statusMessage = new StatusMessage(0,message);
        }//else if(!captcha.equals())验证码没搞呢
        else if(!password.equals(password1)){
            message = "两次密码不一致";
            statusMessage = new StatusMessage(0,message);
        }else{
            message = "注册成功";
            userDao.save(userName,password,email);
            statusMessage = new StatusMessage(1,message);
        }

        return statusMessage;

    }

    @RequestMapping(value = "/login" , method = RequestMethod.POST)
    public String login(String username , String password , HttpSession session){
        int status = 0;
        String message = "";
        StatusMessage statusMessage = new StatusMessage(status,message);


        System.out.println("1111111111111111111111"+username+"  "+password);

        if(username == ""){
            message = "请输入用户名";
        }else{
            UserEntity user = userDao.getByName(username);
            if(password == ""){
                message = "请输入密码";
            }else if(!user.getPassword().equals(password)){
                message = "密码错误";
            }else {
                status = 1;
                message = "用户登陆成功";
                session.setAttribute("loginUser",user);
                statusMessage.setStatus(status);
                statusMessage.setMessage(message);
                System.out.println("message1 : "+message);
                // redirectAttributes.addAttribute("loginMsg",message);
                return "redirect:/index";
            }
        }

        System.out.println("message : "+message);
        statusMessage.setStatus(status);
        statusMessage.setMessage(message);
//        redirectAttributes.addAttribute("loginMsg","登录失败");
        return "redirect://index";
    }















}
