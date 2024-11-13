package Porject.DieuKhien;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller; 
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

	private Object imgSP;
	
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
	

	@RequestMapping(value = "/chitiet", method = {RequestMethod.GET, RequestMethod.POST})
	public String ChiTietSP(
	        @RequestParam(value = "idSP", required = false) String idSP,
	        @RequestParam(value = "ten", required = false) String ten,
	        Model model, HttpSession session) {

	    List<CauHinhSP> cauHinhSPs = null;
	    DanhSachSP danhSachSP = null; 
	    ImgSP imgSP =null;

	    if (idSP != null) {
	        // Xử lý khi người dùng truy cập lần đầu với idSP
	        imgSP = goiHamThongTinSP.ChiTiet(idSP);

	        cauHinhSPs = goiHamThongTinSP.layCauHinhSPTheoIdSP(idSP);

	        danhSachSP = goiHamDanhSachSP.LayIdDS(idSP);

	        session.setAttribute("cauHinhSPs", cauHinhSPs); // Lưu vào session
	        session.setAttribute("danhSachSP", danhSachSP); // Lưu vào session
	        session.setAttribute("imgSP", imgSP); // Lưu thông tin sản phẩm ban đầu

	    } 

	    if (ten != null) {
	        // Xử lý khi người dùng tìm kiếm sản phẩm thứ hai với ten
	        List<CauHinhSP> ten1 = goiHamThongTinSP.TimKiemSP(ten);
	        model.addAttribute("CH1", ten1);

	        cauHinhSPs = (List<CauHinhSP>) session.getAttribute("cauHinhSPs");
	        danhSachSP = (DanhSachSP) session.getAttribute("danhSachSP");
	         imgSP = (ImgSP) session.getAttribute("imgSP");
	    }
	    model.addAttribute("SP", imgSP);
	    model.addAttribute("CH", cauHinhSPs);
	    model.addAttribute("DS", danhSachSP);

	    List<DanhSachSP> sachSPs = goiHamDanhSachSP.layThongTinSP();
	    model.addAttribute("DSSP", sachSPs);

	    return "ChiTietSP";
	
	}
	
	
}
