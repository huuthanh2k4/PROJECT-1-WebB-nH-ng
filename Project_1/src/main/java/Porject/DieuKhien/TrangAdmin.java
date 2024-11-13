package Porject.DieuKhien;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Porject.BaoMat.ThongTinUser;
import Porject.GoiHamChucNang.GoiHam;
import Porject.GoiHamChucNang.GoiHamThongTinSP;
import Porject.entities.NguoiDung;
import Porject.entities.QuanLyThongTin;
import Porject.entities.ThongTinSP.ImgSP;

@Controller
@RequestMapping("/admin")
public class TrangAdmin {

	@RequestMapping("/Welcome")
	public String adminPage(Model model,HttpServletRequest request) {
		model.addAttribute("mess", "Chào mừng bạn đến với trang quản trị viên");
		
		String TenAdmin = request.getUserPrincipal().getName();
		model.addAttribute("TenAdmin", TenAdmin);
		QuanLyThongTin user = (QuanLyThongTin) SecurityContextHolder.getContext().getAuthentication().getPrincipal(); //lấy sai tên nên xảy ra xung đột file code
		model.addAttribute("user", user);
		
		return "admin";
	}
	

}
