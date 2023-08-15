package com.example.baitap_listview;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.Arrays;

public class MainActivity extends AppCompatActivity {

    private ListView listView;
    private ArrayList<Student> arrayStudents;
    private void Constructor(){
        ArrayList<Subject> arraySubjects1 = new ArrayList<>(Arrays.asList(
                new Subject("IT001","Nhập môn lập trình"),
                new Subject("IT002","Lập trình hướng đối tượng"),
                new Subject("IT003","Cấu trúc dữ liệu - giải thuật"),
                new Subject("IT004","Lập trình trực quan")
        ));
        ArrayList<Subject> arraySubjects2 = new ArrayList<>(Arrays.asList(
                new Subject("IT005","Cơ sở dữ liệu"),
                new Subject("IT006","Hệ điều hành"),
                new Subject("IT007","Mạng máy tính"),
                new Subject("IT008","Cấu trúc máy tính")
        ));
        arrayStudents = new ArrayList<Student>(Arrays.asList(
                new Student("Phan Trong Tinh","15/08/2003","KTPM2021",R.drawable.logo1,arraySubjects1),
                new Student("Phan Trong Tinh","15/08/2003","KTPM2021",R.drawable.logo2,arraySubjects2),
                new Student("Phan Trong Tinh","15/08/2003","KTPM2021",R.drawable.logo3,arraySubjects1),
                new Student("Phan Trong Tinh","15/08/2003","KTPM2021",R.drawable.logo4,arraySubjects2)
        ));
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Constructor();
        StudentListAdapter arrayAdapter = new StudentListAdapter(getApplication(), R.layout.listview_student,arrayStudents);
        listView = (ListView) findViewById(R.id.listView);
        listView.setAdapter(arrayAdapter);
    }
}