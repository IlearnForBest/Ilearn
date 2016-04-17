package com.ilearn.bean;

import javax.persistence.*;

/**
 * Created by sl on 16-4-18.
 */
@Entity
@Table(name = "ilearn_resources", schema = "", catalog = "db_ilearn")
public class ResourcesEntity {
    private int rid;
    private String title;
    private String url;
    private String imgurl;
    private String category1;
    private String category2;
    private String category3;
    private Integer collection;
    private Integer remark;
    private Integer grade;
    private Double satisfaction;
    private Integer joinNumber;
    private String sourceWeb;
    private Integer category1Id;
    private Integer category2Id;
    private Integer category3Id;
    private String rkey;
    private Double recommendGrade;

    @Id
    @Column(name = "rid", nullable = false, insertable = true, updatable = true)
    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    @Basic
    @Column(name = "title", nullable = true, insertable = true, updatable = true, length = 255)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "url", nullable = true, insertable = true, updatable = true, length = 255)
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Basic
    @Column(name = "imgurl", nullable = true, insertable = true, updatable = true, length = 255)
    public String getImgurl() {
        return imgurl;
    }

    public void setImgurl(String imgurl) {
        this.imgurl = imgurl;
    }

    @Basic
    @Column(name = "category_1", nullable = true, insertable = true, updatable = true, length = 255)
    public String getCategory1() {
        return category1;
    }

    public void setCategory1(String category1) {
        this.category1 = category1;
    }

    @Basic
    @Column(name = "category_2", nullable = true, insertable = true, updatable = true, length = 255)
    public String getCategory2() {
        return category2;
    }

    public void setCategory2(String category2) {
        this.category2 = category2;
    }

    @Basic
    @Column(name = "category_3", nullable = true, insertable = true, updatable = true, length = 255)
    public String getCategory3() {
        return category3;
    }

    public void setCategory3(String category3) {
        this.category3 = category3;
    }

    @Basic
    @Column(name = "collection", nullable = true, insertable = true, updatable = true)
    public Integer getCollection() {
        return collection;
    }

    public void setCollection(Integer collection) {
        this.collection = collection;
    }

    @Basic
    @Column(name = "remark", nullable = true, insertable = true, updatable = true)
    public Integer getRemark() {
        return remark;
    }

    public void setRemark(Integer remark) {
        this.remark = remark;
    }

    @Basic
    @Column(name = "grade", nullable = true, insertable = true, updatable = true)
    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    @Basic
    @Column(name = "satisfaction", nullable = true, insertable = true, updatable = true, precision = 4)
    public Double getSatisfaction() {
        return satisfaction;
    }

    public void setSatisfaction(Double satisfaction) {
        this.satisfaction = satisfaction;
    }

    @Basic
    @Column(name = "join_number", nullable = true, insertable = true, updatable = true)
    public Integer getJoinNumber() {
        return joinNumber;
    }

    public void setJoinNumber(Integer joinNumber) {
        this.joinNumber = joinNumber;
    }

    @Basic
    @Column(name = "source_web", nullable = true, insertable = true, updatable = true, length = 255)
    public String getSourceWeb() {
        return sourceWeb;
    }

    public void setSourceWeb(String sourceWeb) {
        this.sourceWeb = sourceWeb;
    }

    @Basic
    @Column(name = "category_1_id", nullable = true, insertable = true, updatable = true)
    public Integer getCategory1Id() {
        return category1Id;
    }

    public void setCategory1Id(Integer category1Id) {
        this.category1Id = category1Id;
    }

    @Basic
    @Column(name = "category_2_id", nullable = true, insertable = true, updatable = true)
    public Integer getCategory2Id() {
        return category2Id;
    }

    public void setCategory2Id(Integer category2Id) {
        this.category2Id = category2Id;
    }

    @Basic
    @Column(name = "category_3_id", nullable = true, insertable = true, updatable = true)
    public Integer getCategory3Id() {
        return category3Id;
    }

    public void setCategory3Id(Integer category3Id) {
        this.category3Id = category3Id;
    }

    @Basic
    @Column(name = "rkey", nullable = true, insertable = true, updatable = true, length = 255)
    public String getRkey() {
        return rkey;
    }

    public void setRkey(String rkey) {
        this.rkey = rkey;
    }

    @Basic
    @Column(name = "recommend_grade", nullable = true, insertable = true, updatable = true, precision = 4)
    public Double getRecommendGrade() {
        return recommendGrade;
    }

    public void setRecommendGrade(Double recommendGrade) {
        this.recommendGrade = recommendGrade;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ResourcesEntity that = (ResourcesEntity) o;

        if (rid != that.rid) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;
        if (url != null ? !url.equals(that.url) : that.url != null) return false;
        if (imgurl != null ? !imgurl.equals(that.imgurl) : that.imgurl != null) return false;
        if (category1 != null ? !category1.equals(that.category1) : that.category1 != null) return false;
        if (category2 != null ? !category2.equals(that.category2) : that.category2 != null) return false;
        if (category3 != null ? !category3.equals(that.category3) : that.category3 != null) return false;
        if (collection != null ? !collection.equals(that.collection) : that.collection != null) return false;
        if (remark != null ? !remark.equals(that.remark) : that.remark != null) return false;
        if (grade != null ? !grade.equals(that.grade) : that.grade != null) return false;
        if (satisfaction != null ? !satisfaction.equals(that.satisfaction) : that.satisfaction != null) return false;
        if (joinNumber != null ? !joinNumber.equals(that.joinNumber) : that.joinNumber != null) return false;
        if (sourceWeb != null ? !sourceWeb.equals(that.sourceWeb) : that.sourceWeb != null) return false;
        if (category1Id != null ? !category1Id.equals(that.category1Id) : that.category1Id != null) return false;
        if (category2Id != null ? !category2Id.equals(that.category2Id) : that.category2Id != null) return false;
        if (category3Id != null ? !category3Id.equals(that.category3Id) : that.category3Id != null) return false;
        if (rkey != null ? !rkey.equals(that.rkey) : that.rkey != null) return false;
        if (recommendGrade != null ? !recommendGrade.equals(that.recommendGrade) : that.recommendGrade != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = rid;
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (url != null ? url.hashCode() : 0);
        result = 31 * result + (imgurl != null ? imgurl.hashCode() : 0);
        result = 31 * result + (category1 != null ? category1.hashCode() : 0);
        result = 31 * result + (category2 != null ? category2.hashCode() : 0);
        result = 31 * result + (category3 != null ? category3.hashCode() : 0);
        result = 31 * result + (collection != null ? collection.hashCode() : 0);
        result = 31 * result + (remark != null ? remark.hashCode() : 0);
        result = 31 * result + (grade != null ? grade.hashCode() : 0);
        result = 31 * result + (satisfaction != null ? satisfaction.hashCode() : 0);
        result = 31 * result + (joinNumber != null ? joinNumber.hashCode() : 0);
        result = 31 * result + (sourceWeb != null ? sourceWeb.hashCode() : 0);
        result = 31 * result + (category1Id != null ? category1Id.hashCode() : 0);
        result = 31 * result + (category2Id != null ? category2Id.hashCode() : 0);
        result = 31 * result + (category3Id != null ? category3Id.hashCode() : 0);
        result = 31 * result + (rkey != null ? rkey.hashCode() : 0);
        result = 31 * result + (recommendGrade != null ? recommendGrade.hashCode() : 0);
        return result;
    }
}
