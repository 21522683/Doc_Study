package com.example.baitap_sqlite;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import androidx.annotation.Nullable;

public class Database extends SQLiteOpenHelper {

    private Context context;
    public Database(@Nullable Context context) {
        super(context, "QuanLy.sqlite", null, 1);
        this.context = context;
    }

    // truy vấn không trả về kết quả
    public void QueryData(String sql){
        SQLiteDatabase database = getWritableDatabase();
        database.execSQL(sql);
    }

    //truy vấn trả về kết quả
    public Cursor GetData(String sql){
        SQLiteDatabase database = getReadableDatabase();
        return database.rawQuery(sql,null);
    }
    @Override
    public void onCreate(SQLiteDatabase sqLiteDatabase) {
        String sqlCreate = "CREATE TABLE IF NOT EXISTS Class(Id VARCHAR PRIMARY KEY, Name VARCHAR)";
        sqLiteDatabase.execSQL(sqlCreate);
        sqlCreate = "CREATE TABLE IF NOT EXISTS Student(Id VARCHAR PRIMARY KEY, Name VARCHAR, Dob VARCHAR, ClassId VARCHAR)";
        sqLiteDatabase.execSQL(sqlCreate);
        sqlCreate = "CREATE TABLE IF NOT EXISTS Account(Username VARCHAR PRIMARY KEY, Password VARCHAR)";
        sqLiteDatabase.execSQL(sqlCreate);

        // Thêm tài khoản
        String sqlInsert0 = "INSERT INTO Account VALUES('trongtinh','trongtinh')";
        sqLiteDatabase.execSQL(sqlInsert0);


        // Thêm lớp
        String sqlInsert1 = "INSERT INTO Class VALUES('ML001','Lớp Toán')";
        sqLiteDatabase.execSQL(sqlInsert1);
        String sqlInsert2 = "INSERT INTO Class VALUES('ML002','Lớp Văn')";
        sqLiteDatabase.execSQL(sqlInsert2);
        String sqlInsert3 = "INSERT INTO Class VALUES('ML003','Lớp Anh')";
        sqLiteDatabase.execSQL(sqlInsert3);

        // Thêm sinh viên
        String sqlInsert11 = "INSERT INTO Student VALUES('SV001','Nguyễn Văn A','15/02/2003','ML001')";
        sqLiteDatabase.execSQL(sqlInsert11);
        String sqlInsert12 = "INSERT INTO Student VALUES('SV002','Nguyễn Văn B','15/02/2003','ML001')";
        sqLiteDatabase.execSQL(sqlInsert12);
        String sqlInsert13 = "INSERT INTO Student VALUES('SV003','Nguyễn Văn C','15/02/2003','ML001')";
        sqLiteDatabase.execSQL(sqlInsert13);
        String sqlInsert14 = "INSERT INTO Student VALUES('SV004','Nguyễn Văn D','15/02/2003','ML001')";
        sqLiteDatabase.execSQL(sqlInsert14);

        String sqlInsert21 = "INSERT INTO Student VALUES('SV005','Nguyễn Văn E','15/02/2003','ML002')";
        sqLiteDatabase.execSQL(sqlInsert21);
        String sqlInsert22 = "INSERT INTO Student VALUES('SV006','Nguyễn Văn F','15/02/2003','ML002')";
        sqLiteDatabase.execSQL(sqlInsert22);
        String sqlInsert23 = "INSERT INTO Student VALUES('SV007','Nguyễn Văn G','15/02/2003','ML002')";
        sqLiteDatabase.execSQL(sqlInsert23);
        String sqlInsert24 = "INSERT INTO Student VALUES('SV008','Nguyễn Văn H','15/02/2003','ML002')";
        sqLiteDatabase.execSQL(sqlInsert24);

        String sqlInsert31 = "INSERT INTO Student VALUES('SV009','Nguyễn Văn I','15/02/2003','ML003')";
        sqLiteDatabase.execSQL(sqlInsert31);

        String sqlInsert32 = "INSERT INTO Student VALUES('SV010','Nguyễn Văn J','15/02/2003','ML003')";
        sqLiteDatabase.execSQL(sqlInsert32);
        String sqlInsert33 = "INSERT INTO Student VALUES('SV011','Nguyễn Văn K','15/02/2003','ML003')";
        sqLiteDatabase.execSQL(sqlInsert33);
        String sqlInsert34 = "INSERT INTO Student VALUES('SV012','Nguyễn Văn L','15/02/2003','ML003')";
        sqLiteDatabase.execSQL(sqlInsert34);
    }
    @Override
    public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i, int i1) {

    }
}

