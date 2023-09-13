#include "CNhanVat.h"


CNhanVat::CNhanVat()
{
	MonPhai = 0;
}

CNhanVat::CNhanVat(const CNhanVat& x)
{
	MonPhai = x.MonPhai;
}
CNhanVat::CNhanVat(int mp)
{
	MonPhai = mp;
}
CNhanVat::~CNhanVat()
{
	return;
}

void CNhanVat::Nhap()
{
	CDoiTuong::Nhap();

	if (Hanh == 0)
	{
		cout << "\n\t\t\t\t====================================";
		cout << "\n\t\t\t\t||    Nhap 0 la Thieu Lam.        ||";
		cout << "\n\t\t\t\t||    Nhap 1 la Thien Vuong Bang. ||";
		cout << "\n\t\t\t\t====================================";
		cout << "\n\t\tNhap mon phai: ";
		cin >> MonPhai;
		while (MonPhai != 0 && MonPhai != 1)
		{
			cout << "\n\t\t\t\tKhong hop le! Vui long nhap lai: ";
			cin >> MonPhai;
		}
	}
	if (Hanh == 1)
	{
		cout << "\n\t\t\t\t====================================";
		cout << "\n\t\t\t\t||       Nhap 2 la Nga My.        ||";
		cout << "\n\t\t\t\t||       Nhap 3 la Thuy Yen Mon.  ||";
		cout << "\n\t\t\t\t====================================";
		cout << "\n\t\tNhap mon phai: ";
		cin >> MonPhai;
		while (MonPhai != 2 && MonPhai != 3)
		{
			cout << "\n\t\t\t\tKhong hop le! Vui long nhap lai: ";
			cin >> MonPhai;
		}
	}
	if (Hanh == 2)
	{
		cout << "\n\t\t\t\t====================================";
		cout << "\n\t\t\t\t||       Nhap 4 la Ngu Doc Giao.  ||";
		cout << "\n\t\t\t\t||       Nhap 5 la Duong Mo.      ||";
		cout << "\n\t\t\t\t====================================";
		cout << "\n\t\tNhap mon phai: ";
		cin >> MonPhai;
		while (MonPhai != 4 && MonPhai != 5)
		{
			cout << "\n\t\t\t\tKhong hop le! Vui long nhap lai: ";
			cin >> MonPhai;
		}
	}
	if (Hanh == 3)
	{
		cout << "\n\t\t\t\t====================================";
		cout << "\n\t\t\t\t||    Nhap 6 la Cai Bang.         ||";
		cout << "\n\t\t\t\t||    Nhap 7 la Thien Nhan Giao   ||";
		cout << "\n\t\t\t\t====================================";
		cout << "\n\t\tNhap mon phai: ";
		cin >> MonPhai;
		while (MonPhai != 6 && MonPhai != 7)
		{
			cout << "\n\t\t\t\tKhong hop le! Vui long nhap lai: ";
			cin >> MonPhai;
		}
	}
	if (Hanh == 4)
	{
		cout << "\n\t\t\t\t====================================";
		cout << "\n\t\t\t\t||       Nhap 8 la Con Lon.       ||";
		cout << "\n\t\t\t\t||       Nhap 9 la Vo Dang.       ||";
		cout << "\n\t\t\t\t====================================";
		cout << "\n\t\tNhap mon phai: ";
		cin >> MonPhai;
		while (MonPhai != 8 && MonPhai != 9)
		{
			cout << "\n\t\t\t\tKhong hop le! Vui long nhap lai: ";
			cin >> MonPhai;
		}
	}
	SatThuong = CapDo * 5;
	cout << "\n\n\t\t====================================================================\n\n";
}

void CNhanVat::Xuat()
{
	CDoiTuong::Xuat();
	string Loai[10] = { "Thieu Lam","Thien Vuong Bang",
						"Nga My","Thuy Yen Mon",
						"Ngu Doc Giao","Duong Mon",
						"Cai Bang","Thien Nhan Giao",
						"Con Lon","Vo Dang" };
	cout << "\n\tMon phai: " << Loai[MonPhai];
	cout << "\n\tSat thuong cua nhan vat la: " << SatThuong;
	cout << "\n\n";
}

