package com.ilearn.bean;

import javax.persistence.*;

/**
 * Created by tsj on 16-4-20.
 */
@Entity
@Table(name = "ilearn_log", schema = "", catalog = "db_ilearn")
public class LogEntity {
    private int lid;
    private int resourceid;
    private int userid;

    @Id
    @Column(name = "lid", nullable = false, insertable = true, updatable = true)
    public int getCoid() {
        return lid;
    }

    public void setCoid(int lid) {
        this.lid = lid;
    }

    @Basic
    @Column(name = "resourceid", nullable = true, insertable = true, updatable = true)
    public int getResourceid() {
        return resourceid;
    }

    public void setResourceid(int resourceid) {
        this.resourceid = resourceid;
    }

    @Basic
    @Column(name = "userid", nullable = true, insertable = true, updatable = true)
    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }
}
