package com.example.baitap_listview;
import java.io.Serializable;
public class Subject implements Serializable
{
    private String maMon;
    private  String tenMon;

    public Subject(String maMon, String tenMon) {
        this.maMon = maMon;
        this.tenMon = tenMon;
    }

    public String getMaMon() {
        return maMon;
    }

    public String getTenMon() {
        return tenMon;
    }

}
