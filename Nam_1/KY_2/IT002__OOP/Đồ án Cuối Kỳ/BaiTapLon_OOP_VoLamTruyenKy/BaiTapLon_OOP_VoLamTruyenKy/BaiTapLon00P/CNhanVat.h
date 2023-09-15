#pragma once
#include"CDoiTuong.h"

class CNhanVat : public CDoiTuong
{
protected:
	int MonPhai;
public:
	CNhanVat();
	CNhanVat(const CNhanVat&);
	CNhanVat(int);
	void Nhap();
	void Xuat();
	~CNhanVat();
};

