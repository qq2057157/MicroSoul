package com.hust.microsoul.model;

import java.util.Date;

public class CollectionModel extends CollectionModelKey {
    private Integer id;

    private Date createtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}