package Porject.DieuKhien;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller; 
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Porject.GoiHamChucNang.GoiHam;
import Porject.GoiHamChucNang.GoiHamThongTinSP;
import Porject.GoiHamChucNang.goiHamDanhSachSP;
import Porject.entities.NguoiDung;
import Porject.entities.QuanLyThongTin;
import Porject.entities.ThongTinSP.CauHinhSP;
import Porject.entities.ThongTinSP.DanhSachSP;
import Porject.entities.ThongTinSP.ImgSP;
import Porject.entities.ThongTinSP.ThuongHieu;
@Controller
@RequestMapping("/user")
public class TrangNguoiDung {
	@Autowired
	private GoiHam goiHam;
	
	@Autowired
	private goiHamDanhSachSP goiHamDanhSachSP;
	
	@Autowired 
	private GoiHamThongTinSP goiHamThongTinSP;
	
	@RequestMapping("/usera")
	public String TrangUser (Model model) {	
		return "loading";
	}
	
	@RequestMapping("/user")
	public String LoadingPage(Model model,HttpServletRequest request) {
		boolean isAdmin = request.isUserInRole("VAITRO_ADMIN");
		model.addAttribute("isAdmin", isAdmin);
		
		QuanLyThongTin TenUser = (QuanLyThongTin) SecurityContextHolder.getContext().getAuthentication().getPrincipal(); //lấy sai tên nên xảy ra xung đột file code
		model.addAttribute("TenUser", TenUser);
		model.addAttribute("mess", "Chào mừng bạn đến với của hàng của chúng tôi");
		return "user";
	}
	@RequestMapping("/danhSachSP")
	String DanhSachSP(Model model) {
		List<DanhSachSP> danhSachSPs = goiHamDanhSachSP.layThongTinSP();
		model.addAttribute("danhSachSPs", danhSachSPs);
		
		List<ThuongHieu> thuongHieus = goiHamThongTinSP.layTTTH();
	    model.addAttribute("thuongHieus", thuongHieus);
		return"danhSachSP";
	}
	
	@RequestMapping("/timkiem")
	public String timKiemSP(
	        @RequestParam(value = "ten", required = false) String ten,
	        @RequestParam(value = "tenThuongHieu", required = false) String tenThuongHieu,
	        @RequestParam(value = "minGia", required = false) Integer minGia,
	        @RequestParam(value = "maxGia", required = false) Integer maxGia,
	        @RequestParam(value = "maDanhMuc", required = false) String maDanhMuc, 
	        Model model) {

	    List<DanhSachSP> list = goiHamDanhSachSP.TimKiemSP(ten, tenThuongHieu, minGia, maxGia, maDanhMuc);
	    model.addAttribute("danhSachSPs", list);
	    
	    List<ThuongHieu> thuongHieus = goiHamThongTinSP.layTTTH();
	    model.addAttribute("thuongHieus", thuongHieus);
	    return "danhSachSP"; 
	}
	

	
	@RequestMapping("/chitiet")
    public String ChiTietSP(@RequestParam("idSP")String idSP,
    						Model model) {
        ImgSP imgSP = goiHamThongTinSP.ChiTiet(idSP);
        model.addAttribute("SP", imgSP);
        
        List<CauHinhSP> cauHinhSPs = goiHamThongTinSP.layCauHinhSPTheoIdSP(idSP);
        model.addAttribute("CH", cauHinhSPs);
        
        DanhSachSP danhSachSP = goiHamDanhSachSP.LayIdDS(idSP);
        model.addAttribute("DS", danhSachSP);
        
        List<DanhSachSP> sachSPs = goiHamDanhSachSP.layThongTinSP();
        model.addAttribute("DSSP", sachSPs);
        
        
        return "ChiTietSP"; 
    }
	
	@RequestMapping("/chitiet1")
    public String ChiTietSP1(@RequestParam("ten")String ten,Model model) {
       
        List<CauHinhSP> ten1 = goiHamThongTinSP.TimKiemSP(ten);
        model.addAttribute("CH1", ten1);
        
        return "ChiTietSP"; 
    }
	
	
}
