package Porject.entities.ThongTinSP;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "thuongHieu")
public class ThuongHieu {
	@Id
	@Column(name = "maThuongHieu")
	private String maThuongHieu;
	
	@Column(name = "tenThuongHieu")
	private String tenThuongHieu;
	
	@OneToMany(mappedBy = "TH", fetch = FetchType.EAGER)
	private Set<DanhSachSP> danhSachSPs;
	
	public ThuongHieu() {
		// TODO Auto-generated constructor stub
	}

	public ThuongHieu(String maThuongHieu, String tenThuongHieu, Set<DanhSachSP> danhSachSPs) {
		super();
		this.maThuongHieu = maThuongHieu;
		this.tenThuongHieu = tenThuongHieu;
		this.danhSachSPs = danhSachSPs;
	}

	public String getMaThuongHieu() {
		return maThuongHieu;
	}

	public void setMaThuongHieu(String maThuongHieu) {
		this.maThuongHieu = maThuongHieu;
	}

	public String getTenThuongHieu() {
		return tenThuongHieu;
	}

	public void setTenThuongHieu(String tenThuongHieu) {
		this.tenThuongHieu = tenThuongHieu;
	}

	public Set<DanhSachSP> getDanhSachSPs() {
		return danhSachSPs;
	}

	public void setDanhSachSPs(Set<DanhSachSP> danhSachSPs) {
		this.danhSachSPs = danhSachSPs;
	}
	
	
}
