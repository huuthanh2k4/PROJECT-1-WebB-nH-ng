package Porject.entities;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

public class QuanLyThongTin implements UserDetails{
	
	private Collection<? extends GrantedAuthority> authorities;
	private String TaiKhoan;
	private String MatKhau;
	private Boolean TrangThai;
	private String TenND;
	private Boolean GioiTinh;
	private Date NgaySinh;
	private String QueQuan;
	private String gmail;
	private String SoDT;
	private Boolean TaiKhoanConHieuLuc;
	private Boolean TaiKhoanKoBiKhoa;
	private boolean MkConHieuLuc;
	
	public QuanLyThongTin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QuanLyThongTin(Collection<? extends GrantedAuthority> authorities, String taiKhoan, String matKhau,
			Boolean trangThai, String tenND, Boolean gioiTinh, Date ngaySinh, String queQuan, String gmail, String soDT,
			Boolean taiKhoanConHieuLuc, Boolean taiKhoanKoBiKhoa, boolean mkConHieuLuc) {
		super();
		this.authorities = authorities;
		this.TaiKhoan = taiKhoan;
		this.MatKhau = matKhau;
		this.TrangThai = trangThai;
		this.TenND = tenND;
		this.GioiTinh = gioiTinh;
		this.NgaySinh = ngaySinh;
		this.QueQuan = queQuan;
		this.gmail = gmail;
		this.SoDT = soDT;
		this.TaiKhoanConHieuLuc = taiKhoanConHieuLuc;
		this.TaiKhoanKoBiKhoa = taiKhoanKoBiKhoa;
		this.MkConHieuLuc = mkConHieuLuc;
	}

	public Collection<? extends GrantedAuthority> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(Collection<? extends GrantedAuthority> authorities) {
		this.authorities = authorities;
	}

	public String getTaiKhoan() {
		return TaiKhoan;
	}

	public void setTaiKhoan(String taiKhoan) {
		TaiKhoan = taiKhoan;
	}

	public String getMatKhau() {
		return MatKhau;
	}

	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}

	public Boolean getTrangThai() {
		return TrangThai;
	}

	public void setTrangThai(Boolean trangThai) {
		TrangThai = trangThai;
	}

	public String getTenND() {
		return TenND;
	}

	public void setTenND(String tenND) {
		TenND = tenND;
	}

	public Boolean getGioiTinh() {
		return GioiTinh;
	}

	public void setGioiTinh(Boolean gioiTinh) {
		GioiTinh = gioiTinh;
	}

	public Date getNgaySinh() {
		return NgaySinh;
	}

	public void setNgaySinh(Date ngaySinh) {
		NgaySinh = ngaySinh;
	}

	public String getQueQuan() {
		return QueQuan;
	}

	public void setQueQuan(String queQuan) {
		QueQuan = queQuan;
	}

	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}

	public String getSoDT() {
		return SoDT;
	}

	public void setSoDT(String soDT) {
		SoDT = soDT;
	}

	public Boolean getTaiKhoanConHieuLuc() {
		return TaiKhoanConHieuLuc;
	}

	public void setTaiKhoanConHieuLuc(Boolean taiKhoanConHieuLuc) {
		TaiKhoanConHieuLuc = taiKhoanConHieuLuc;
	}

	public Boolean getTaiKhoanKoBiKhoa() {
		return TaiKhoanKoBiKhoa;
	}

	public void setTaiKhoanKoBiKhoa(Boolean taiKhoanKoBiKhoa) {
		TaiKhoanKoBiKhoa = taiKhoanKoBiKhoa;
	}

	public boolean isMkConHieuLuc() {
		return MkConHieuLuc;
	}

	public void setMkConHieuLuc(boolean mkConHieuLuc) {
		MkConHieuLuc = mkConHieuLuc;
	}

	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return MatKhau;
	}

	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return TaiKhoan;
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return TaiKhoanConHieuLuc		;
	}

	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return TaiKhoanKoBiKhoa;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return MkConHieuLuc;
	}

	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return TrangThai;
	}
	
	public void xoaMkKhiXacThuc() {
	    this.MatKhau = null;
	}
	
	}
