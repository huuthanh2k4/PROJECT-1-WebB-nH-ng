package Porject.entities.ThongTinSP;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "DanhMuc")
public class DanhMuc {
	@Id
	@Column(name = "maDanhMuc")
	private String maDanhMuc;
	
	@Column(name = "tenDanhMuc")
	private String tenDanhMuc;
	
	@OneToMany(mappedBy = "DM", fetch = FetchType.EAGER)
	private Set<DanhSachSP> danhSachSPs;
	
	public DanhMuc() {
		// TODO Auto-generated constructor stub
	}

	public DanhMuc(String maDanhMuc, String tenDanhMuc, Set<DanhSachSP> danhSachSPs) {
		super();
		this.maDanhMuc = maDanhMuc;
		this.tenDanhMuc = tenDanhMuc;
		this.danhSachSPs = danhSachSPs;
	}

	public String getMaDanhMuc() {
		return maDanhMuc;
	}

	public void setMaDanhMuc(String maDanhMuc) {
		this.maDanhMuc = maDanhMuc;
	}

	public String getTenDanhMuc() {
		return tenDanhMuc;
	}

	public void setTenDanhMuc(String tenDanhMuc) {
		this.tenDanhMuc = tenDanhMuc;
	}

	public Set<DanhSachSP> getDanhSachSPs() {
		return danhSachSPs;
	}

	public void setDanhSachSPs(Set<DanhSachSP> danhSachSPs) {
		this.danhSachSPs = danhSachSPs;
	}
	
	

}
