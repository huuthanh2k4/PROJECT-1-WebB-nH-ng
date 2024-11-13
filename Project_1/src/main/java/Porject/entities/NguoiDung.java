package Porject.entities;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "NguoiDung")
public class NguoiDung {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "TaiKhoan")
	private String TaiKhoan;
	
	@Column(name = "MatKhau")
	private String MatKhau;
	
	@Column(name = "TrangThai")
	private Boolean TrangThai;
	
	@Column(name = "TenND")
	private String TenND;
	
	@Column(name = "GioiTinh")
	private Boolean GioiTinh;
	
	@Column(name = "NgaySinh")
	private Date NgaySinh;
	
	@Column(name = "QueQuan")
	private String QueQuan;
	
	@Column(name = "gmail")
	private String gmail;
	
	@Column(name = "SoDT")
	private String SoDT;
	
	@OneToMany(mappedBy = "nguoiDung",fetch = FetchType.EAGER)
	private Set<XetVaiTro> nguoiDung;
	
	public NguoiDung() {
		// TODO Auto-generated constructor stub
	}

	public NguoiDung(Long id, String taiKhoan, String matKhau, Boolean trangThai, String tenND, Boolean gioiTinh,
			Date ngaySinh, String queQuan, String gmail, String soDT, Set<XetVaiTro> vaiTros) {
		super();
		this.id = id;
		TaiKhoan = taiKhoan;
		MatKhau = matKhau;
		TrangThai = trangThai;
		TenND = tenND;
		GioiTinh = gioiTinh;
		NgaySinh = ngaySinh;
		QueQuan = queQuan;
		this.gmail = gmail;
		SoDT = soDT;
		this.nguoiDung = vaiTros;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public Set<XetVaiTro> getVaiTros() {
		return nguoiDung;
	}

	public void setVaiTros(Set<XetVaiTro> vaiTros) {
		this.nguoiDung = vaiTros;
	}
	
	
	
}
