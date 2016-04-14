package com.ilearn.bean;

import javax.persistence.*;

/**
 * Created by sl on 16-4-13.
 */
@Entity
@Table(name = "ilearn_category", schema = "", catalog = "db_ilearn")
public class CategoryEntity {
    private int cid;
    private String cateName;
    private String category2;
    private String category1;

    @Id
    @Column(name = "cid", nullable = false, insertable = true, updatable = true)
    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    @Basic
    @Column(name = "cate_name", nullable = true, insertable = true, updatable = true, length = 255)
    public String getCateName() {
        return cateName;
    }

    public void setCateName(String cateName) {
        this.cateName = cateName;
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
    @Column(name = "category_1", nullable = true, insertable = true, updatable = true, length = 255)
    public String getCategory1() {
        return category1;
    }

    public void setCategory1(String category1) {
        this.category1 = category1;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        CategoryEntity that = (CategoryEntity) o;

        if (cid != that.cid) return false;
        if (cateName != null ? !cateName.equals(that.cateName) : that.cateName != null) return false;
        if (category2 != null ? !category2.equals(that.category2) : that.category2 != null) return false;
        if (category1 != null ? !category1.equals(that.category1) : that.category1 != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = cid;
        result = 31 * result + (cateName != null ? cateName.hashCode() : 0);
        result = 31 * result + (category2 != null ? category2.hashCode() : 0);
        result = 31 * result + (category1 != null ? category1.hashCode() : 0);
        return result;
    }
}
