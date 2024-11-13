package Porject.GoiHamChucNang;

import java.util.List; 

import Porject.entities.NguoiDung;

public interface GoiHam {
	public NguoiDung DangNhap(String taikhoan);
	public List<NguoiDung> layThongTin();
	public boolean ThemTaiKhoan(NguoiDung nd);
	public NguoiDung thongTinNguoiDung(Integer id);
	public boolean CapNhap(NguoiDung nd);
	public boolean xoa(Integer id);
	public List<NguoiDung> timKiem(String search);

}
  