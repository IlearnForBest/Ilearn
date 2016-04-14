package com.ilearn.bean;

import java.util.List;

/**
 * Created by sl on 16-4-14.
 */
public class CateBean {

    private String cate_name;
    private List<String> cate2s;
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

    public List<String> getCate2s() {
        return cate2s;
    }

    public void setCate2s(List<String> cate2s) {
        this.cate2s = cate2s;
    }
}
