package Porject.entities.ThongTinSP;

import java.util.Set; 

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "sac")
public class Sac {
	@Id
	@Column(name = "maSac")
	private String maSac;
	
	@Column(name = "tenMauSac")
	private String tenMauSac;
	
	@OneToMany(mappedBy = "S", fetch = FetchType.EAGER)
	private Set<CauHinhSP> cauHinhSPs;
	
	public Sac() {
		// TODO Auto-generated constructor stub
	}

	public Sac(String maSac, String tenMauSac, Set<CauHinhSP> cauHinhSPs) {
		super();
		this.maSac = maSac;
		this.tenMauSac = tenMauSac;
		this.cauHinhSPs = cauHinhSPs;
	}

	public String getMaSac() {
		return maSac;
	}

	public void setMaSac(String maSac) {
		this.maSac = maSac;
	}

	public String getTenMauSac() {
		return tenMauSac;
	}

	public void setTenMauSac(String tenMauSac) {
		this.tenMauSac = tenMauSac;
	}

	public Set<CauHinhSP> getCauHinhSPs() {
		return cauHinhSPs;
	}

	public void setCauHinhSPs(Set<CauHinhSP> cauHinhSPs) {
		this.cauHinhSPs = cauHinhSPs;
	}
	
	

}
