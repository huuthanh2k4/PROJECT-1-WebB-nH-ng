package Porject.entities.ThongTinSP;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "LOAI_RAM")
public class LOAI_RAM {
	@Id
	@Column(name = "maLoaiRAM")
	private String maLoaiRAM;
	
	@Column(name = "tenLoaiRAM")
	private String tenLoaiRAM;
	
	@OneToMany(mappedBy = "LR", fetch = FetchType.EAGER)
	private Set<CauHinhSP> cauHinhSPs;
	
	public LOAI_RAM() {
		// TODO Auto-generated constructor stub
	}

	public LOAI_RAM(String maLoaiRAM, String tenLoaiRAM, Set<CauHinhSP> cauHinhSPs) {
		super();
		this.maLoaiRAM = maLoaiRAM;
		this.tenLoaiRAM = tenLoaiRAM;
		this.cauHinhSPs = cauHinhSPs;
	}

	public String getMaLoaiRAM() {
		return maLoaiRAM;
	}

	public void setMaLoaiRAM(String maLoaiRAM) {
		this.maLoaiRAM = maLoaiRAM;
	}

	public String getTenLoaiRAM() {
		return tenLoaiRAM;
	}

	public void setTenLoaiRAM(String tenLoaiRAM) {
		this.tenLoaiRAM = tenLoaiRAM;
	}

	public Set<CauHinhSP> getCauHinhSPs() {
		return cauHinhSPs;
	}

	public void setCauHinhSPs(Set<CauHinhSP> cauHinhSPs) {
		this.cauHinhSPs = cauHinhSPs;
	}
	
	
	
}
