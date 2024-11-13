package Porject.entities.ThongTinSP;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="danhsachsp")
public class DanhSachSP {
	@Id
	@Column(name = "idSP")
	private String idSP;
	
	@Column(name = "tenSP")
	private String tenSP;
	
	@Column(name = "moTaSP")
	private String moTaSP;
	
	@Column(name = "img")
	private String img;
	
	@Column(name = "dungLgPin")
	private String dungLgPin;
	
	@Column(name = "HeDieuHanh")
	private String heDieuHanh;

	@OneToMany(mappedBy = "DSSP", fetch = FetchType.EAGER)
	private Set<CauHinhSP> cauHinhSPs;
	
	@ManyToOne
	@JoinColumn(name = "maDanhMuc",referencedColumnName = "maDanhMuc")
	private DanhMuc DM;
	
	@ManyToOne
	@JoinColumn(name = "maThuongHieu",referencedColumnName = "maThuongHieu")
	private ThuongHieu TH;
	
	public DanhSachSP() {
		// TODO Auto-generated constructor stub
	}

	public DanhSachSP(String idSP, String tenSP, String moTaSP, String img, String dungLgPin, String heDieuHanh,
			Set<CauHinhSP> cauHinhSPs, DanhMuc dM, ThuongHieu tH) {
		super();
		this.idSP = idSP;
		this.tenSP = tenSP;
		this.moTaSP = moTaSP;
		this.img = img;
		this.dungLgPin = dungLgPin;
		this.heDieuHanh = heDieuHanh;
		this.cauHinhSPs = cauHinhSPs;
		DM = dM;
		TH = tH;
	}

	public String getIdSP() {
		return idSP;
	}

	public void setIdSP(String idSP) {
		this.idSP = idSP;
	}

	public String getTenSP() {
		return tenSP;
	}

	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}

	public String getMoTaSP() {
		return moTaSP;
	}

	public void setMoTaSP(String moTaSP) {
		this.moTaSP = moTaSP;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getDungLgPin() {
		return dungLgPin;
	}

	public void setDungLgPin(String dungLgPin) {
		this.dungLgPin = dungLgPin;
	}

	public String getHeDieuHanh() {
		return heDieuHanh;
	}

	public void setHeDieuHanh(String heDieuHanh) {
		this.heDieuHanh = heDieuHanh;
	}

	public Set<CauHinhSP> getCauHinhSPs() {
		return cauHinhSPs;
	}

	public void setCauHinhSPs(Set<CauHinhSP> cauHinhSPs) {
		this.cauHinhSPs = cauHinhSPs;
	}

	public DanhMuc getDM() {
		return DM;
	}

	public void setDM(DanhMuc dM) {
		DM = dM;
	}

	public ThuongHieu getTH() {
		return TH;
	}

	public void setTH(ThuongHieu tH) {
		TH = tH;
	}
	
	
}
