#include "CTroChoi.h"
#include"CNhanVat.h"
#include"CQuaiVat.h"
#include"CDoiTuong.h"

int CTroChoi::soLuongNguoiChoi = 0;
int CTroChoi::soLuongQuaiVat = 0;

void CTroChoi::Nhap()
{
	cout << "\n\t\t==================== BAT DAU CHUONG TRINH =====================";
	cout << "\n\n\tNhap so luong doi tuong: ";
	cin >> n;

	for (int i = 0; i < n; i++)
	{
		int loai;
		cout << "\n\t\t\t\t=================================";
		cout << "\n\t\t\t\t||   Nhap 0 de nhap Nhan Vat.   ||";
		cout << "\n\t\t\t\t||   Nhap 1 de nhap Quai Vat.   ||";
		cout << "\n\t\t\t\t=================================";
		cout << "\n\t\t\t\tNhap lua chon cua ban: ";
		cin >> loai;
		while (loai != 0 && loai != 1)
		{
			cout << "\n\t\t\t\tKhong hop le vui long nhap lai: ";
			cin >> loai;
		}
		switch (loai)
		{
		case 0:
			dsNguoiChoi[soLuongNguoiChoi] = new CNhanVat;
			dsNguoiChoi[soLuongNguoiChoi++]->Nhap();
			break;
		case 1:
			dsQuaiVat[soLuongQuaiVat] = new CQuaiVat;
			dsQuaiVat[soLuongQuaiVat++]->Nhap();
			break;
		}
	}
}

void CTroChoi::Xuat()
{
	cout << "\n\tSo luong doi tuong: " << n << endl;
	cout << "\nSo luong nguoi choi: " << soLuongNguoiChoi << endl;
	for (int i = 0; i < soLuongNguoiChoi; i++)
		dsNguoiChoi[i]->Xuat();
	cout << "\nSo luong quai vat: " << soLuongQuaiVat << endl;
	for (int i = 0; i < soLuongQuaiVat; i++)
		dsQuaiVat[i]->Xuat();
}

CDoiTuong* CTroChoi::SatThuongLonNhat()
{
	if (n == 0)
		return NULL;
	CDoiTuong* lc = nullptr;
	if (soLuongNguoiChoi > 0)
	{
		lc = dsNguoiChoi[0];
	}
	else
	{
		lc = dsQuaiVat[0];
	}
	for (int i = 1; i < soLuongNguoiChoi; i++)
		if (dsNguoiChoi[i]->GetSatThuong() > lc->GetSatThuong())
			lc = dsNguoiChoi[i];

	for (int i = 0; i < soLuongQuaiVat; i++)
		if (dsQuaiVat[i]->GetSatThuong() > lc->GetSatThuong())
			lc = dsQuaiVat[i];
	return lc;
}

void CTroChoi::Choi()
{
	if (n <= 1)
		cout << "\n\t\t\tChi co 1 doi tuong. Khong co ai de chien dau.";
	else
	{
		this->ChienDau();
		while (1)
		{
			int lc;
			cout << "\n\n";
			cout << "\n\t\t\t\t      Ban co muon choi tiep khong ?";
			cout << "\n\t\t\t\t   ====================================";
			cout << "\n\t\t\t\t   || Nhap 0 neu ban muon choi tiep. ||";
			cout << "\n\t\t\t\t   || Nhap 1 neu ban muon dung lai.  ||";
			cout << "\n\t\t\t\t   ====================================";
			cout << "\n\t\t\t\t      Vui long nhap lua chon: ";
			cin >> lc;
			while (lc != 0 && lc != 1)
			{
				cout << "\n\t\t\t\tKhong hop le. Vui long nhap lai: ";
				cin >> lc;
			}
			if (lc == 0)
				this->ChienDau();
			if (lc == 1)
				return;
		}
	}
}

void CTroChoi::ChienDau()
{
	cout << "\n\t\t\tDanh sach ten cac nguoi choi: ";
	for (int i = 0; i < soLuongNguoiChoi; i++)
		cout << "\n\t\t\t\t\t" << i << ". Ten: " << dsNguoiChoi[i]->GetTen();
	cout << "\n";
	cout << "\n\t\t\tDanh sach ten cac quai vat: ";
	for (int i = 0; i < soLuongQuaiVat; i++)
		cout << "\n\t\t\t\t\t" << i + soLuongNguoiChoi << ". Ten: " << dsQuaiVat[i]->GetTen();
	cout << "\n\n";

	cout << "\n\n";

	int lc1;
	cout << "\n\tMoi ban chon doi tuong A.";
	cout << "\n\t\tBan muon A la doi tuong thu may: ";
	cin >> lc1;
	while (lc1 < 0 || lc1 >= n)
	{
		cout << "\n\t\tKhong hop le. Vui long nhap cac so trong danh sach: ";
		cin >> lc1;
	}

	int lc2;
	cout << "\n\tMoi ban chon doi tuong B.";
	cout << "\n\t\tBan muon B la doi tuong thu may: ";
	cin >> lc2;
	while (lc2 < 0 || lc2 >= n || lc2 == lc1)
	{
		cout << "\n\t\tKhong hop le. Vui long nhap cac so trong danh sach: ";
		cin >> lc2;
	}

	float dt1, dt2;

	//if (lc1 >= soLuongNguoiChoi)
	//{
	//	lc1 -= soLuongNguoiChoi;
	//}
	//
	//if (lc2 >= soLuongNguoiChoi)
	//{
	//	lc2 -= soLuongNguoiChoi;
	//}


		cout << "\n\nDoi tuong A: " << "\n";
		if (lc1 >= soLuongNguoiChoi)
		{
			dsQuaiVat[lc1 - soLuongNguoiChoi]->Xuat();
			if (lc2 >= soLuongNguoiChoi)
			{
				dt1 = dsQuaiVat[lc1 - soLuongNguoiChoi]->SatThuongTheoNguHanh(dsQuaiVat[lc2 - soLuongNguoiChoi]);
			}
			else
			{
				dt1 = dsQuaiVat[lc1 - soLuongNguoiChoi]->SatThuongTheoNguHanh(dsNguoiChoi[lc2]);
			}
		}
		else
		{
			dsNguoiChoi[lc1]->Xuat();
			if (lc2 >= soLuongNguoiChoi)
			{
				dt1 = dsNguoiChoi[lc1]->SatThuongTheoNguHanh(dsQuaiVat[lc2 - soLuongNguoiChoi]);
			}
			else
			{
				dt1 = dsNguoiChoi[lc1]->SatThuongTheoNguHanh(dsNguoiChoi[lc2]);
			}
		}

		cout << "\nDoi tuong B: " << "\n";
		if (lc2 >= soLuongNguoiChoi)
		{
			dsQuaiVat[lc2 - soLuongNguoiChoi]->Xuat();
			if (lc1 >= soLuongNguoiChoi)
			{
				dt2 = dsQuaiVat[lc2 - soLuongNguoiChoi]->SatThuongTheoNguHanh(dsQuaiVat[lc1 - soLuongNguoiChoi]);
			}
			else
			{
				dt2 = dsQuaiVat[lc2 - soLuongNguoiChoi]->SatThuongTheoNguHanh(dsNguoiChoi[lc1]);
			}
		}
		else
		{
			dsNguoiChoi[lc2]->Xuat();
			if (lc1 >= soLuongNguoiChoi)
			{
				dt2 = dsNguoiChoi[lc2]->SatThuongTheoNguHanh(dsQuaiVat[lc1 - soLuongNguoiChoi]);
			}
			else
			{
				dt2 = dsNguoiChoi[lc2]->SatThuongTheoNguHanh(dsNguoiChoi[lc1]);
			}
		}

		string tenA, tenB;
		if (lc1 >= soLuongNguoiChoi)
		{
			tenA = dsQuaiVat[lc1 - soLuongNguoiChoi]->GetTen();
		}
		else
		{
			tenA = dsNguoiChoi[lc1]->GetTen();
		}

		if (lc2 >= soLuongNguoiChoi)
		{
			tenB = dsQuaiVat[lc2 - soLuongNguoiChoi]->GetTen();
		}
		else
		{
			tenB = dsNguoiChoi[lc2]->GetTen();
		}


	if (dt1 > dt2)
		cout << "\n\n\t\t\tNeu [" << tenA << "] chien dau voi [" << tenB << "] thi [" << tenA << "] se thang.";
	else if (dt1 < dt2)
		cout << "\n\n\t\t\tNeu [" << tenB << "] chien dau voi [" << tenA << "] thi [" << tenB << "] se thang.";
	else
		cout << "\n\n\t\t\tHai nguoi co suc manh ngang nhau.";
}