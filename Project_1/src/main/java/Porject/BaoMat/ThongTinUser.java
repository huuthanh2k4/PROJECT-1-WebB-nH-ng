package Porject.BaoMat;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import Porject.GoiHamChucNang.GoiHam;
import Porject.entities.NguoiDung;
import Porject.entities.QuanLyThongTin;
import Porject.entities.XetVaiTro;

@Service("thongTinUser")
public class ThongTinUser implements UserDetailsService {
	@Autowired
	private GoiHam HamDAO ;

	@Override
	public UserDetails loadUserByUsername(String taikhoan) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		UserDetails details = loadUser(taikhoan);//lỗi ở đây ko khai báo đã return
		return loadUser(taikhoan);
	}
	
	
	
	private UserDetails loadUser(String taikhoan) {
		NguoiDung dung = HamDAO.DangNhap(taikhoan);
		
		if (dung == null) {
			return null;
		}
		
		Collection<GrantedAuthority> grantedAuthorities = new HashSet<GrantedAuthority>();
		
		Set<XetVaiTro> vaiTroset = dung.getVaiTros();
			for (XetVaiTro vaiTro : vaiTroset) {
				grantedAuthorities.add(new SimpleGrantedAuthority("ROLE_" + vaiTro.getVaiTro().getName()));
			}
			return new QuanLyThongTin(grantedAuthorities, dung.getTaiKhoan(),
														  dung.getMatKhau(),
														  dung.getTrangThai(),
														  dung.getTenND(),
														  dung.getGioiTinh(),
														  dung.getNgaySinh(),
														  dung.getQueQuan(),
														  dung.getGmail(),
														  dung.getSoDT(),
														  true,
														  true,
														  true);
	}

}
