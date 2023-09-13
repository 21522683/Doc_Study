#pragma once
#include<iostream>
#include<string>
using namespace std;

class CDoiTuong
{
protected:
	float SatThuong;
	int CapDo;
	int Hanh;
	string Ten;
public:
	CDoiTuong();
	CDoiTuong(const CDoiTuong&);
	CDoiTuong(float, int, int, string);
	virtual void Nhap();
	virtual void Xuat();
	virtual float GetSatThuong();
	virtual string GetTen();
	virtual float SatThuongTheoNguHanh(CDoiTuong*);
	~CDoiTuong();
};

