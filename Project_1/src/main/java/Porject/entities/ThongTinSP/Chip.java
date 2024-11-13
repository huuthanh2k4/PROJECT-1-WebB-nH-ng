package Porject.entities.ThongTinSP;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Chip")
public class Chip {
	@Id
	@Column(name = "maChip")
	private String maChip;
	
	@Column(name = "tenChip")
	private String tenChip;
	
	@OneToMany(mappedBy = "C", fetch = FetchType.EAGER)
	private Set<CauHinhSP> cauHinhSPs;
	
	public Chip() {
		// TODO Auto-generated constructor stub
	}

	public Chip(String maChip, String tenChip, Set<CauHinhSP> cauHinhSPs) {
		super();
		this.maChip = maChip;
		this.tenChip = tenChip;
		this.cauHinhSPs = cauHinhSPs;
	}

	public String getMaChip() {
		return maChip;
	}

	public void setMaChip(String maChip) {
		this.maChip = maChip;
	}

	public String getTenChip() {
		return tenChip;
	}

	public void setTenChip(String tenChip) {
		this.tenChip = tenChip;
	}

	public Set<CauHinhSP> getCauHinhSPs() {
		return cauHinhSPs;
	}

	public void setCauHinhSPs(Set<CauHinhSP> cauHinhSPs) {
		this.cauHinhSPs = cauHinhSPs;
	}
	
	

}
