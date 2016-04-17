package com.ilearn.bean;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by sl on 16-4-18.
 */
@Entity
@Table(name = "ilearn_recommend", schema = "", catalog = "db_ilearn")
public class RecommendEntity {
    private int id;
    private Integer resourceId;
    private Integer userId;
    private Double grade;
    private Timestamp time;

    @Id
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "resource_id", nullable = true, insertable = true, updatable = true)
    public Integer getResourceId() {
        return resourceId;
    }

    public void setResourceId(Integer resourceId) {
        this.resourceId = resourceId;
    }

    @Basic
    @Column(name = "user_id", nullable = true, insertable = true, updatable = true)
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "grade", nullable = true, insertable = true, updatable = true, precision = 0)
    public Double getGrade() {
        return grade;
    }

    public void setGrade(Double grade) {
        this.grade = grade;
    }

    @Basic
    @Column(name = "time", nullable = true, insertable = true, updatable = true)
    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        RecommendEntity that = (RecommendEntity) o;

        if (id != that.id) return false;
        if (resourceId != null ? !resourceId.equals(that.resourceId) : that.resourceId != null) return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        if (grade != null ? !grade.equals(that.grade) : that.grade != null) return false;
        if (time != null ? !time.equals(that.time) : that.time != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (resourceId != null ? resourceId.hashCode() : 0);
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (grade != null ? grade.hashCode() : 0);
        result = 31 * result + (time != null ? time.hashCode() : 0);
        return result;
    }
}
