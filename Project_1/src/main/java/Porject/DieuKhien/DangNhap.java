	package Porject.DieuKhien;
	
	import java.text.SimpleDateFormat;
	import java.util.Date;
	import java.util.List;
	
	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.beans.propertyeditors.CustomDateEditor;
	import org.springframework.security.crypto.password.PasswordEncoder;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.WebDataBinder;
	import org.springframework.web.bind.annotation.InitBinder;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestParam;
	import org.springframework.web.servlet.mvc.support.RedirectAttributes;
	
	import Porject.GoiHamChucNang.GoiHam;
	import Porject.GoiHamChucNang.HamXetVaiTro;
	import Porject.GoiHamChucNang.goiHamTenVaiTro;
	import Porject.entities.NguoiDung;
	import Porject.entities.VaiTro;
	import Porject.entities.XetVaiTro;
	
	@Controller
	public class DangNhap {
		@Autowired
		private GoiHam goiHam;
		
		@Autowired
		private HamXetVaiTro hamXetVaiTro;
		
		@Autowired
		private goiHamTenVaiTro goiHamTenVaiTro;
		
		@Autowired
		private PasswordEncoder passwordEncoder;
		
		@InitBinder
		public void date(WebDataBinder binder) {
			SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
			binder.registerCustomEditor(Date.class, new CustomDateEditor(sf, true));
		}
			
		@RequestMapping(value = {"/","/loginRegister"})
		public String login(@RequestParam(value = "error" , required = false) String error, Model model) {
			if (error != null) {
				model.addAttribute("mess", "Đăng nhập thất bại");
			}
			
			NguoiDung dung = new NguoiDung();
			model.addAttribute("dung", dung);
			return "loginRegister";
		}
		
		@RequestMapping("/FormDK")
		public String FormDangKy(@ModelAttribute("dung")NguoiDung dung, Model model,RedirectAttributes ri) {
			try {
				//Kiểm tra xem tài khoản đã tồn tại chưa
				if (goiHam.DangNhap(dung.getTaiKhoan()) != null) {
					model.addAttribute("loi", "Tài khoản đã tồn tại");
					return "loginRegister";
				}
				
				//Mã hóa mật khẩu
				String MaHoa = passwordEncoder.encode(dung.getMatKhau());
				dung.setMatKhau(MaHoa);
				
				//Thêm tài khoản mới 
				Boolean newND = goiHam.ThemTaiKhoan(dung);
				
				if (!newND) {
					model.addAttribute("loiDK", "Đăng ký tài khoản thất bại");
					return "loginRegister";
				}
				
				//Xét vai trò của người dùng
				VaiTro vaiTro = goiHamTenVaiTro.LayId(2l);
				if (vaiTro == null) {
					model.addAttribute("loiDK", "Vai tro không tồn tại !!!!");
					return "loginRegister";
				}
				
				NguoiDung PhanQuyen = goiHam.DangNhap(dung.getTaiKhoan());
				//Tạo và lưu vai trò của người dùng
				XetVaiTro xetVaiTro = new XetVaiTro();
				xetVaiTro.setNguoiDung(PhanQuyen);
				xetVaiTro.setVaiTro(vaiTro);
				
				boolean LuuPhanQuyen = hamXetVaiTro.themVaiTro(xetVaiTro);
				
				if (LuuPhanQuyen) {
					ri.addFlashAttribute("TC", "Tạo tài khoản thành công");
					return "redirect:/loginRegister";
				}else {
					model.addAttribute("loiDK", "Tạo tài khoản thành công nhưng ko có quyền truy cập!!!!");
					return "loginRegister";
				}
				
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("loiDK", "Đã có lỗi xảy ra vui lòng thử lại!!!!");
				return"loginRegister";
			}
		}
	
		@RequestMapping("/logout")
		public String logout(Model model) {
			model.addAttribute("mess", "đăng xuất thành công");
			NguoiDung dung = new NguoiDung();
			model.addAttribute("dung", dung);
			return "loginRegister";
		}
		
		@RequestMapping("/loginRegister1")
		public String VaoAdmin(Model model) {
			model.addAttribute("a", "Hãy nhập tài khoản mật khẩu của quản trị viên");
			NguoiDung dung = new NguoiDung();
			model.addAttribute("dung", dung);
			return "loginRegister";
		}
		
		
	}
