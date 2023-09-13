#include "CDoiTuong.h"
#include "CDoiTuong.h"

CDoiTuong::CDoiTuong()
{
	SatThuong = 0;
	CapDo = 1;
	Hanh = 0;
	Ten = "abc";

}

CDoiTuong::CDoiTuong(const CDoiTuong& x)
{
	SatThuong = x.SatThuong;
	CapDo = x.CapDo;
	Hanh = x.Hanh;
	Ten = x.Ten;
}

CDoiTuong::~CDoiTuong()
{
	return;
}

CDoiTuong::CDoiTuong(float st, int lv, int nh, string name)
{
	SatThuong = st;
	CapDo = lv;
	Hanh = nh;
	Ten = name;
}

void CDoiTuong::Nhap()
{
	cout << "\n\t\tNhap nickname: ";
	cin.ignore();
	getline(cin, Ten);

	cout << "\n\t\t\t\t   ============================";
	cout << "\n\t\t\t\t   ||   Nhap 0 la (He Kim)   ||";
	cout << "\n\t\t\t\t   ||   Nhap 1 la (He Thuy)  ||";
	cout << "\n\t\t\t\t   ||   Nhap 2 la (He Moc)   ||";
	cout << "\n\t\t\t\t   ||   Nhap 3 la (He Hoa)   ||";
	cout << "\n\t\t\t\t   ||   Nhap 4 la (He Tho)   ||";
	cout << "\n\t\t\t\t   ============================";
	cout << "\n\t\tNhap ngu hanh ma ban muon: ";
	cin >> Hanh;
	while (Hanh < 0 || Hanh > 4)
	{
		cout << "\n\t\tKhong hop le! Vui long nhap lai: ";
		cin >> Hanh;
	}

	cout << "\n\t\tNhap cap do: ";
	cin >> CapDo;
}

string CDoiTuong::GetTen()
{
	return Ten;
}

float CDoiTuong::GetSatThuong()
{
	return SatThuong;
}

void CDoiTuong::Xuat()
{
	cout << "\n\tNickname: " << Ten;
	string He[5] = { "He Kim", "He Thuy", "He Moc" ,"He Hoa","He Tho" };
	cout << "\n\tHanh: " << He[Hanh];
	cout << "\n\tCap do: " << CapDo;
}

float CDoiTuong::SatThuongTheoNguHanh(CDoiTuong* x)
{
	int Sinh = (this->Hanh + 1) % 5;
	if (Sinh == x->Hanh)
	{
		this->SatThuong = (float)(this->SatThuong + 0.1 * this->SatThuong);
		cout << "\nSat thuong cua [" << this->GetTen() << "] len [" << x->GetTen() << "] la: " << this->SatThuong;
		cout << "\nSat thuong cua [" << x->GetTen() << "] len [" << this->GetTen() << "] la: " << x->SatThuong;
		return this->SatThuong;
	}

	int Khac = (this->Hanh + 2) % 5;
	if (Khac == x->Hanh)
	{
		this->SatThuong = (float)(this->SatThuong + 0.2 * this->SatThuong);
		cout << "\nSat thuong cua [" << this->GetTen() << "] len [" << x->GetTen() << "] la: " << this->SatThuong;
		cout << "\nSat thuong cua [" << x->GetTen() << "] len [" << this->GetTen() << "] la: " << x->SatThuong - 0.2 * x->SatThuong;
		return this->SatThuong;
	}


	int BiKhac = (this->Hanh + 3) % 5;
	if (BiKhac == x->Hanh)
	{
		x->SatThuong = (float)(x->SatThuong - 0.2 * x->SatThuong);
		cout << "\nSat thuong cua [" << x->GetTen() << "] len [" << this->GetTen() << "] la: " << x->SatThuong;
		cout << "\nSat thuong cua [" << this->GetTen() << "] len [" << x->GetTen() << "] la: " << this->SatThuong + 0.2 * this->SatThuong;
		return x->SatThuong;
	}
	return this->SatThuong;
}