#include"CTroChoi.h"
#include"CDoiTuong.h"
#include"CNhanVat.h"
#include"CQuaiVat.h"


int main()
{
	CTroChoi a;
	a.Nhap();
	a.Xuat();

	CDoiTuong* b = a.SatThuongLonNhat();
	cout << "\nPhan tu co sat thuong lon nhat la: ";
	b->Xuat();

	a.Choi();
	cout << "\n\n\t\t\t==================== KET THUC CHUONG TRINH =====================";
	cout << "\n\n";
	return 1;
}

