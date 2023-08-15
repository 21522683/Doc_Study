#pragma once
#include"CDoiTuong.h"

class CQuaiVat : public CDoiTuong
{
protected:
	int LoaiQuaiVat;
public:
	CQuaiVat();
	CQuaiVat(const CQuaiVat&);
	CQuaiVat(int);
	void Nhap();
	void Xuat();
	~CQuaiVat();
};

