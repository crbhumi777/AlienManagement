package com.myspringboot.demo.dto;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

/*
    Data class for SQL dbs like H2, MySQL
 */
@Entity
public class AlienEntity {

    @Id
    private int aid;
    private String aname;
    private String lang;

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang;
    }

    @Override
    public String toString() {
        return "Alien{" +
                "aid=" + aid +
                ", aname='" + aname + '\'' +
                ", lang='" + lang + '\'' +
                '}';
    }
}
