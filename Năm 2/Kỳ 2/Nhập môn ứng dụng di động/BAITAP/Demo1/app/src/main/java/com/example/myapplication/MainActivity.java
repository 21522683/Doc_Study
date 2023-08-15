package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    private Button button1;
    private EditText input1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        button1 = (Button) findViewById(R.id.button);
        input1 = (EditText) findViewById(R.id.textView);

        button1.setOnClickListener(new View.OnClickListener(){

            @Override
            public void onClick(View view) {
                String name = input1.getText().toString();
                Toast.makeText(getApplicationContext(), name, Toast.LENGTH_SHORT).show();
            }
        });
    }
}