package Porject.entities.ThongTinSP;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "TinhNang")
public class TinhNang {
	@Id
	@Column(name = "maTinhNang")
	private String maTinhNang;
	
	@Column(name = "tenTinhNang")
	private String tenTinhNang;
	
	@OneToMany(mappedBy = "TN", fetch = FetchType.EAGER)
	private Set<CauHinhSP> cauHinhSPs;
	
	public TinhNang() {
		// TODO Auto-generated constructor stub
	}

	public TinhNang(String maTinhNang, String tenTinhNang, Set<CauHinhSP> cauHinhSPs) {
		super();
		this.maTinhNang = maTinhNang;
		this.tenTinhNang = tenTinhNang;
		this.cauHinhSPs = cauHinhSPs;
	}

	public String getMaTinhNang() {
		return maTinhNang;
	}

	public void setMaTinhNang(String maTinhNang) {
		this.maTinhNang = maTinhNang;
	}

	public String getTenTinhNang() {
		return tenTinhNang;
	}

	public void setTenTinhNang(String tenTinhNang) {
		this.tenTinhNang = tenTinhNang;
	}

	public Set<CauHinhSP> getCauHinhSPs() {
		return cauHinhSPs;
	}

	public void setCauHinhSPs(Set<CauHinhSP> cauHinhSPs) {
		this.cauHinhSPs = cauHinhSPs;
	}
	
	

}
