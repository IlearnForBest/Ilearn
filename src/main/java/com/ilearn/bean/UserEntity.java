package com.ilearn.bean;

import javax.persistence.*;

/**
 * Created by sl on 16-4-16.
 */
@Entity
@Table(name = "ilearn_user", schema = "", catalog = "db_ilearn")
public class UserEntity {
    private int id;
    private String userName;
    private String email;
    private String password;
    private String telephone;
    private String imageUrl;
    private String arrCollectionId;
    private String arrLogId;
    private String direction;

    @Id
    @Column(name = "id", nullable = false, insertable = true, updatable = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "user_name", nullable = true, insertable = true, updatable = true, length = 255)
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Basic
    @Column(name = "email", nullable = true, insertable = true, updatable = true, length = 255)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "password", nullable = true, insertable = true, updatable = true, length = 255)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "telephone", nullable = true, insertable = true, updatable = true, length = 255)
    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    @Basic
    @Column(name = "image_url", nullable = true, insertable = true, updatable = true, length = 255)
    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Basic
    @Column(name = "arr_collection_id", nullable = true, insertable = true, updatable = true, length = 255)
    public String getArrCollectionId() {
        return arrCollectionId;
    }

    public void setArrCollectionId(String arrCollectionId) {
        this.arrCollectionId = arrCollectionId;
    }

    @Basic
    @Column(name = "arr_log_id", nullable = true, insertable = true, updatable = true, length = 255)
    public String getArrLogId() {
        return arrLogId;
    }

    public void setArrLogId(String arrLogId) {
        this.arrLogId = arrLogId;
    }

    @Basic
    @Column(name = "direction", nullable = true, insertable = true, updatable = true, length = 255)
    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserEntity that = (UserEntity) o;

        if (id != that.id) return false;
        if (userName != null ? !userName.equals(that.userName) : that.userName != null) return false;
        if (email != null ? !email.equals(that.email) : that.email != null) return false;
        if (password != null ? !password.equals(that.password) : that.password != null) return false;
        if (telephone != null ? !telephone.equals(that.telephone) : that.telephone != null) return false;
        if (imageUrl != null ? !imageUrl.equals(that.imageUrl) : that.imageUrl != null) return false;
        if (arrCollectionId != null ? !arrCollectionId.equals(that.arrCollectionId) : that.arrCollectionId != null)
            return false;
        if (arrLogId != null ? !arrLogId.equals(that.arrLogId) : that.arrLogId != null) return false;
        if (direction != null ? !direction.equals(that.direction) : that.direction != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (userName != null ? userName.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (telephone != null ? telephone.hashCode() : 0);
        result = 31 * result + (imageUrl != null ? imageUrl.hashCode() : 0);
        result = 31 * result + (arrCollectionId != null ? arrCollectionId.hashCode() : 0);
        result = 31 * result + (arrLogId != null ? arrLogId.hashCode() : 0);
        result = 31 * result + (direction != null ? direction.hashCode() : 0);
        return result;
    }
}
