package com.ilearn.bean;

import javax.persistence.*;

/**
 * Created by tsj on 16-4-20.
 */
@Entity
@Table(name = "ilearn_collection", schema = "", catalog = "db_ilearn")
public class CollectionEntity {
    private int coid;
    private int resourceid;
    private int userid;

    @Id
    @Column(name = "coid", nullable = false, insertable = true, updatable = true)
    public int getCoid() {
        return coid;
    }

    public void setCoid(int coid) {
        this.coid = coid;
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
