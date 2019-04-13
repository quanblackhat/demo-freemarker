package com.namphong.web.model;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "menu")
public class Menu implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(name = "id")
    protected Long id;

    @Column(name = "version")
    private Integer version;

    @Column(name = "title")
    private String title;

    @Column(name = "link")
    private String link;

    public Menu() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
