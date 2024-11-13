package Porject.entities.ThongTinSP;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "TangSoQuet")
public class TangSoQuet {
	@Id
	@Column(name = "maTangSoQuet")
	private String maTangSoQuet;
	
	@Column(name = "loaiTangSoQuet")
	private String loaiTangSoQuet;
	
	@OneToMany(mappedBy = "TSQ", fetch = FetchType.EAGER)
	private Set<CauHinhSP> cauHinhSPs;
	
	public TangSoQuet() {
		// TODO Auto-generated constructor stub
	}

	public TangSoQuet(String maTangSoQuet, String loaiTangSoQuet, Set<CauHinhSP> cauHinhSPs) {
		super();
		this.maTangSoQuet = maTangSoQuet;
		this.loaiTangSoQuet = loaiTangSoQuet;
		this.cauHinhSPs = cauHinhSPs;
	}

	public String getMaTangSoQuet() {
		return maTangSoQuet;
	}

	public void setMaTangSoQuet(String maTangSoQuet) {
		this.maTangSoQuet = maTangSoQuet;
	}

	public String getLoaiTangSoQuet() {
		return loaiTangSoQuet;
	}

	public void setLoaiTangSoQuet(String loaiTangSoQuet) {
		this.loaiTangSoQuet = loaiTangSoQuet;
	}

	public Set<CauHinhSP> getCauHinhSPs() {
		return cauHinhSPs;
	}

	public void setCauHinhSPs(Set<CauHinhSP> cauHinhSPs) {
		this.cauHinhSPs = cauHinhSPs;
	}
	
	

}
