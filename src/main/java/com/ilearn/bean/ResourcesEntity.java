package com.ilearn.bean;

import javax.persistence.*;

/**
 * Created by sl on 16-4-2.
 */
@Entity
@Table(name = "ilearn_it_com", schema = "", catalog = "db_ilearn")
public class ResourcesEntity {
    private int rid;
    private String title;
    private String url;
    private String imgutl;
    private String category1;
    private String category2;
    private int collection;
    private int remark;
    private int grade;
    private double satisfaction;
    private int join_number;
    private String source_web;

    @Id
    @Column(name="rid")
    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    @Basic
    @Column(name = "title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "url")
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Basic
    @Column(name = "imgurl")
    public String getImgutl() {
        return imgutl;
    }

    public void setImgutl(String imgutl) {
        this.imgutl = imgutl;
    }

    @Basic
    @Column(name = "cateroty_1")
    public String getCategory1() {
        return category1;
    }

    public void setCategory1(String category1) {
        this.category1 = category1;
    }

    @Basic
    @Column(name = "cateroty_2")
    public String getCategory2() {
        return category2;
    }

    public void setCategory2(String category2) {
        this.category2 = category2;
    }

    @Basic
    @Column(name = "collection")
    public int getCollection() {
        return collection;
    }

    public void setCollection(int collection) {
        this.collection = collection;
    }

    @Basic
    @Column(name = "remark")
    public int getRemark() {
        return remark;
    }

    public void setRemark(int remark) {
        this.remark = remark;
    }

    @Basic
    @Column(name = "grade")
    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    @Basic
    @Column(name = "satisfaction")
    public double getSatisfaction() {
        return satisfaction;
    }

    public void setSatisfaction(double satisfaction) {
        this.satisfaction = satisfaction;
    }

    @Basic
    @Column(name = "join_number")
    public int getJoin_number() {
        return join_number;
    }

    public void setJoin_number(int join_number) {
        this.join_number = join_number;
    }

    @Basic
    @Column(name = "source_web")
    public String getSource_web() {
        return source_web;
    }

    public void setSource_web(String source_web) {
        this.source_web = source_web;
    }
}
