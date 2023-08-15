package com.example.baitap_listview;
import android.os.Parcel;
import android.os.Parcelable;

import androidx.annotation.NonNull;

import java.io.Serializable;
import java.util.ArrayList;

public class Student implements Serializable {
    private String name;
    private String dob;
    private String myClass;
    private int avatar;
    private ArrayList<Subject> arraySubjects;

    public Student(String name, String dob, String myClass, int avatar, ArrayList<Subject> arraySubjects) {
        this.name = name;
        this.dob = dob;
        this.myClass = myClass;
        this.avatar = avatar;
        this.arraySubjects = arraySubjects;
    }

    public int getAvatar() {
        return avatar;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getDob() {
        return dob;
    }

    public String getMyClass() {
        return myClass;
    }

    public ArrayList<Subject> getArraySubjects() {
        return arraySubjects;
    }

}
