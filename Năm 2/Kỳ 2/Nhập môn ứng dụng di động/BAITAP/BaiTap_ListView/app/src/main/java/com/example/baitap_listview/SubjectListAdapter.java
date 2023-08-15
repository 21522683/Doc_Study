package com.example.baitap_listview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import java.util.ArrayList;

public class SubjectListAdapter extends ArrayAdapter<Subject> {
    private int resource;
    private ArrayList<Subject> subjects;

    public SubjectListAdapter(@NonNull Context context, int resource, @NonNull ArrayList<Subject> subjects) {
        super(context, resource, subjects);
        this.resource=resource;
        this.subjects=subjects;
    }

    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        View v = convertView;
        ViewHolder viewHolder;
        if (v==null){
            v = LayoutInflater.from(getContext()).inflate(this.resource,null);
            viewHolder = new ViewHolder();
            viewHolder.maMonTextView = (TextView) v.findViewById(R.id.maMon);
            viewHolder.tenMonTextView = (TextView) v.findViewById(R.id.tenMon);
            v.setTag(viewHolder);
        }
        else {
            viewHolder = (ViewHolder) v.getTag();
        }
        Subject subject = getItem(position);

        if (subject!=null){
            viewHolder.maMonTextView.setText(subject.getMaMon());
            viewHolder.tenMonTextView.setText(subject.getTenMon());
        }
        return v;
    }
    private class ViewHolder{
        TextView maMonTextView,tenMonTextView;
    }
}
