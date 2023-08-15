package com.example.baitap_listview;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import java.io.Console;

public class Sub_Activity extends AppCompatActivity {

    TextView nameTextView;
    TextView classTextView;
    TextView dobTextView;
    ImageView imageView;
    ListView listViewSubjects;
    Button closeButton;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_sub);

        nameTextView = findViewById(R.id.name);
        classTextView = findViewById(R.id.class_);
        dobTextView = findViewById(R.id.dob);
        imageView = findViewById(R.id.logo);
        listViewSubjects = findViewById(R.id.listViewSubjects);
        closeButton = findViewById(R.id.closeButton);

        Intent i = getIntent();
        Student student = (Student) i.getSerializableExtra("student");

        if (student!=null) {
            nameTextView.setText(student.getName());
            classTextView.setText(student.getMyClass());
            dobTextView.setText(student.getDob());
            imageView.setImageResource(student.getAvatar());

            SubjectListAdapter arrayAdapter = new SubjectListAdapter(getApplication(),R.layout.listview_subject, student.getArraySubjects());
            listViewSubjects.setAdapter(arrayAdapter);
        }
        closeButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });
    }
}