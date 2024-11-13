package Porject.GoiHamChucNang;

import java.util.List;

import Porject.entities.ThongTinSP.CauHinhSP;
import Porject.entities.ThongTinSP.Chip;
import Porject.entities.ThongTinSP.DanhMuc;
import Porject.entities.ThongTinSP.DoPhanGiai;
import Porject.entities.ThongTinSP.ImgSP;
import Porject.entities.ThongTinSP.LOAI_RAM;
import Porject.entities.ThongTinSP.Ram;
import Porject.entities.ThongTinSP.Sac;
import Porject.entities.ThongTinSP.TangSoQuet;
import Porject.entities.ThongTinSP.ThuongHieu;
import Porject.entities.ThongTinSP.TinhNang;

public interface GoiHamThongTinSP {
//	lấy thông tin 
	public List<CauHinhSP> layTTCHSP();
	public List<Chip> layTTC();
	public List<DanhMuc> layTTDM();
	public List<DoPhanGiai> layTTDPG();
	public List<ImgSP> LayIMG();
	public List<LOAI_RAM> layTTLR();
	public List<Ram> layTTR();
	public List<Sac> layTTS();
	public List<TangSoQuet> layTTTSQ();
	public List<ThuongHieu> layTTTH();
	public List<TinhNang> layTTTN();
	
//	Thông tin chi tiết sản phẩm
	public ImgSP ChiTiet(String id);
	public List<CauHinhSP> layCauHinhSPTheoIdSP(String idSP);
	public List<CauHinhSP> TimKiemSP(String Search);
}
