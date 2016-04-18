package com.ilearn.bean;

import java.util.List;

/**
 * Created by sl on 16-4-14.
 */
public class CateBean {

    private int cate_id;
    private String cate_name;
    private List<CategoryEntity> cate2s;
    private List<CateBean> children;

    public String getCate_name() {
        return cate_name;
    }

    public void setCate_name(String cate_name) {
        this.cate_name = cate_name;
    }

    public List<CateBean> getChildren() {
        return children;
    }

    public void setChildren(List<CateBean> children) {
        this.children = children;
    }


    public int getCate_id() {
        return cate_id;
    }

    public void setCate_id(int cate_id) {
        this.cate_id = cate_id;
    }

    public List<CategoryEntity> getCate2s() {
        return cate2s;
    }

    public void setCate2s(List<CategoryEntity> cate2s) {
        this.cate2s = cate2s;
    }
}
