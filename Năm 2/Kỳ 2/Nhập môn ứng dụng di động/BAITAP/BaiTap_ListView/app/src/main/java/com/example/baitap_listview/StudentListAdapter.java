package com.example.baitap_listview;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.ArrayList;

public class StudentListAdapter extends ArrayAdapter<Student> {
    private int resource;
    private ArrayList<Student> students;

    public StudentListAdapter(@NonNull Context context, int resource, @NonNull ArrayList<Student> students) {
        super(context, resource, students);
        this.students=students;
        this.resource=resource;
    }

    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        View v = convertView;
        ViewHolder viewHolder;

        if (v == null) {
            LayoutInflater vi;
            vi = LayoutInflater.from(this.getContext());
            v = vi.inflate(this.resource, null);
            viewHolder = new ViewHolder();

            viewHolder.nameTextView = (TextView) v.findViewById(R.id.name);
            viewHolder.classTextView = (TextView) v.findViewById(R.id.class_);
            viewHolder.dobTextView =   (TextView) v.findViewById(R.id.dob);
            viewHolder.imageView = (ImageView) v.findViewById(R.id.logo);
            viewHolder.button =(Button) v.findViewById(R.id.detailBtn);
            v.setTag(viewHolder);
        }
        else {
            viewHolder = (ViewHolder) v.getTag();
        }
        Student s = getItem(position);
        if (s!=null){
            viewHolder.nameTextView.setText(s.getName());
            viewHolder.classTextView.setText(s.getMyClass());
            viewHolder.dobTextView.setText(s.getDob());
            viewHolder.imageView.setImageResource(s.getAvatar());

            View v2 = v;
            viewHolder.button.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    Intent i = new Intent(v2.getContext(),Sub_Activity.class);
                    i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    i.putExtra("student", s);
                    v2.getContext().startActivity(i);
                }
            });
        }
        return v;
    }

    private class ViewHolder{
        private TextView nameTextView, dobTextView,classTextView;
        private ImageView imageView;
        private Button button;
    }
}
