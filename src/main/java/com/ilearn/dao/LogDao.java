package com.ilearn.dao;

import com.ilearn.bean.CollectionEntity;
import com.ilearn.bean.LogEntity;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by tsj on 16-4-20.
 */
@Repository("logDao")
public class LogDao extends BaseDao{
    public LogEntity getById(int lid){
        return get(LogEntity.class,lid);
    }

    public List<LogEntity> getLogByUid(int uid){
        String hql = "from LogEntity as log where log.userid='"+uid+"'";
        Query query = query(hql);
        List<LogEntity> logs = query.list();
        return logs;
    }
}
