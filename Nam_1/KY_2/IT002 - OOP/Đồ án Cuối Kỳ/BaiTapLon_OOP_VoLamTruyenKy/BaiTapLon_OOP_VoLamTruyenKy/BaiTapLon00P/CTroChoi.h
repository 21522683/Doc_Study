#pragma once
#include<iostream>
using namespace std;

class CDoiTuong;

class CTroChoi
{
protected:
	int n;
	//n la so luong nguoi choi, m la so luong quai vat
	CDoiTuong* dsNguoiChoi[1000];
	CDoiTuong* dsQuaiVat[1000];
public:
	static int soLuongNguoiChoi;
	static int soLuongQuaiVat;
	void Nhap();
	void Xuat();
	CDoiTuong* SatThuongLonNhat();
	void ChienDau();
	void Choi();
};

