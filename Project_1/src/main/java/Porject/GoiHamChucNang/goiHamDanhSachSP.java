package Porject.GoiHamChucNang;

import java.util.List;

import Porject.entities.ThongTinSP.DanhSachSP; 


public interface goiHamDanhSachSP {
	public List<DanhSachSP> layThongTinSP();
    public List<DanhSachSP> TimKiemSP(String ten, String tenThuongHieu, Integer minGia, Integer maxGia, String maDanhMuc);
    public DanhSachSP LayIdDS(String id);
} 
