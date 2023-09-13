#include "CQuaiVat.h"

CQuaiVat::CQuaiVat()
{
	LoaiQuaiVat = 0;
}

CQuaiVat::CQuaiVat(const CQuaiVat& x)
{
	LoaiQuaiVat = x.LoaiQuaiVat;
}

CQuaiVat::CQuaiVat(int loai)
{
	LoaiQuaiVat = loai;
}

CQuaiVat::~CQuaiVat()
{
	return;
}

void CQuaiVat::Nhap()
{
	CDoiTuong::Nhap();

	cout << "\n\t\t\t\t===============================";
	cout << "\n\t\t\t\t||  Nhap 0 la Thong Thuong.  ||";
	cout << "\n\t\t\t\t||  Nhap 1 la Dau Linh.      ||";
	cout << "\n\t\t\t\t===============================";
	cout << "\n\t\tNhap lua chon cua ban: ";
	cin >> LoaiQuaiVat;
	while (LoaiQuaiVat != 0 && LoaiQuaiVat != 1)
	{
		cout << "\n\t\t\t\tKhong hop le! Vui ong nhap lai: ";
		cin >> LoaiQuaiVat;
	}

	if (LoaiQuaiVat == 0)
		SatThuong = CapDo * 3;
	else
		SatThuong = CapDo * 7;
	cout << "\n\n\t\t====================================================================\n\n";
}

void CQuaiVat::Xuat()
{
	CDoiTuong::Xuat();
	string Loai[2] = { "Thong thuong","Dau linh" };
	cout << "\n\tQuai vat: " << Loai[LoaiQuaiVat];
	cout << "\n\tSat thuong cua quai vat la: " << SatThuong;
	cout << "\n\n";
}

