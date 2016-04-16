package com.ilearn.dao;

import com.ilearn.bean.UserEntity;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by sl on 16-3-12.
 */
@Repository("userDao")
public class UserDao extends BaseDao{

    public UserEntity getById(int userid){
        return get(UserEntity.class,userid);
    }

    public void UserEntity(UserEntity user){
        save(user);
    }


    public UserEntity getByName(String userName){
        String hql = "from UserEntity as user where user.userName=?";
        Query query = query(hql);
        query.setString(0,userName);
        List<UserEntity> member = query.list();
        return member.get(0);
    }


    /**
     * 判断邮箱是否存在
     * @param email
     * @return
     */
    public boolean isEmailExit(String email){

        if(HQuery("email",email) == null){
            return false;
        }

        return true;

    }

    /**
     * 判断用户名是否存在
     * @param
     * @return
     */
    public boolean isUserNameExit(String userName){

        if(HQuery("userName",userName) == null){
            return false;
        }

        return true;

    }


    /**
     * 查询
     * @param colume
     * @param value
     * @return
     */
    private List<UserEntity> HQuery(String colume , String value){
        String hql = "from UserEntity as user where user."+colume+"=?";
        Query query = query(hql);
        query.setString(0, String.valueOf(value));
        List<UserEntity> results = query.list();
        return results;
    }

}
