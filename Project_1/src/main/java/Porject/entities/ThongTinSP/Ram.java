package Porject.entities.ThongTinSP;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Ram")
public class Ram {
	@Id
	@Column(name = "maRAM")
	private String maRAM;
	
	@Column(name = "dungLuongRAM")
	private String dungLuongRAM;
	
	@OneToMany(mappedBy = "R", fetch = FetchType.EAGER)
	private Set<CauHinhSP> cauHinhSPs;
	
	public Ram() {
		// TODO Auto-generated constructor stub
	}

	public Ram(String maRAM, String dungLuongRAM, Set<CauHinhSP> cauHinhSPs) {
		super();
		this.maRAM = maRAM;
		this.dungLuongRAM = dungLuongRAM;
		this.cauHinhSPs = cauHinhSPs;
	}

	public String getMaRAM() {
		return maRAM;
	}

	public void setMaRAM(String maRAM) {
		this.maRAM = maRAM;
	}

	public String getDungLuongRAM() {
		return dungLuongRAM;
	}

	public void setDungLuongRAM(String dungLuongRAM) {
		this.dungLuongRAM = dungLuongRAM;
	}

	public Set<CauHinhSP> getCauHinhSPs() {
		return cauHinhSPs;
	}

	public void setCauHinhSPs(Set<CauHinhSP> cauHinhSPs) {
		this.cauHinhSPs = cauHinhSPs;
	}
	
	

}
