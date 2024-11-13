package Porject.entities.ThongTinSP;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "doPhanGiai")
public class DoPhanGiai {
	@Id
	@Column(name = "maDoPhanGiai")
	private String maDoPhanGiai;
	
	@Column(name = "doPhanGiai")
	private String doPhanGiai;
	
	@OneToMany(mappedBy = "DPG", fetch = FetchType.EAGER)
	private Set<CauHinhSP> cauHinhSPs;
	
	public DoPhanGiai() {
		// TODO Auto-generated constructor stub
	}

	public DoPhanGiai(String maDoPhanGiai, String doPhanGiai, Set<CauHinhSP> cauHinhSPs) {
		super();
		this.maDoPhanGiai = maDoPhanGiai;
		this.doPhanGiai = doPhanGiai;
		this.cauHinhSPs = cauHinhSPs;
	}

	public String getMaDoPhanGiai() {
		return maDoPhanGiai;
	}

	public void setMaDoPhanGiai(String maDoPhanGiai) {
		this.maDoPhanGiai = maDoPhanGiai;
	}

	public String getDoPhanGiai() {
		return doPhanGiai;
	}

	public void setDoPhanGiai(String doPhanGiai) {
		this.doPhanGiai = doPhanGiai;
	}

	public Set<CauHinhSP> getCauHinhSPs() {
		return cauHinhSPs;
	}

	public void setCauHinhSPs(Set<CauHinhSP> cauHinhSPs) {
		this.cauHinhSPs = cauHinhSPs;
	}
	
	
	

}
