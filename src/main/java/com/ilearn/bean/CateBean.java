package com.ilearn.bean;

import java.util.List;

/**
 * Created by sl on 16-4-14.
 */
public class CateBean {

    private String cate2_name;
    private List<CategoryEntity> cate3_names;

    public String getCate2_name() {
        return cate2_name;
    }

    public void setCate2_name(String cate2_name) {
        this.cate2_name = cate2_name;
    }

    public List<CategoryEntity> getCate3_names() {
        return cate3_names;
    }

    public void setCate3_names(List<CategoryEntity> cate3_names) {
        this.cate3_names = cate3_names;
    }
}
