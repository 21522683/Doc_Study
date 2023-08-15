package com.example.baitap_todolist;

import androidx.appcompat.app.AppCompatActivity;

import android.app.DatePickerDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Toast;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class activity_new extends AppCompatActivity {

    String flag;
    int Position = -1;
    EditText nameJob, description, finishDate;
    Button btnDate, btnSave;
    CheckBox checkboxDone;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_new);

        nameJob = findViewById(R.id.editNameOfJob);
        description = findViewById(R.id.editDescriptionJob);
        finishDate = findViewById(R.id.editFinishData);
        btnDate = findViewById(R.id.btnDate);
        btnSave = findViewById(R.id.btnSave);
        checkboxDone = findViewById(R.id.checkbox);

        Intent i = getIntent();
        flag = i.getExtras().getString("flag");
        if (flag.equals("Edit")){
            ItemList item = (ItemList) i.getSerializableExtra("item");
            Position = i.getExtras().getInt("position");
            nameJob.setText(item.getName().toString());
            description.setText(item.getDescription().toString());
            finishDate.setText(item.getFinishDate().toString());
            checkboxDone.setChecked(item.isMark());
        }

        btnDate.setOnClickListener(view -> {
            Calendar c = Calendar.getInstance();
            int year = c.get(Calendar.YEAR);
            int month = c.get(Calendar.MONTH);
            int day = c.get(Calendar.DAY_OF_MONTH);
            DatePickerDialog datePickerDialog = new DatePickerDialog(
                    activity_new.this, (datePicker, year1, month1, day1) -> {
                        c.set(year1, month1, day1);
                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
                        finishDate.setText(simpleDateFormat.format(c.getTime()));
                    }, year, month + 1, day);
            datePickerDialog.show();
        });
        btnSave.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (nameJob.getText().length() == 0 ||
                        description.getText().length() == 0 ||
                        finishDate.getText().toString().length() == 0)
                {
                    Toast.makeText(activity_new.this, "Please enter full information !", Toast.LENGTH_SHORT).show();
                }
                else
                {
                    ItemList item = new ItemList(nameJob.getText().toString(),
                            description.getText().toString(),
                            finishDate.getText().toString(), checkboxDone.isChecked());
                    Intent intent = new Intent();
                    intent.putExtra("item", item);
                    if (flag.equals("Edit"))  intent.putExtra("position",Position);
                    setResult(RESULT_OK, intent);
                    finish();
                }
            }
        });
    }
}