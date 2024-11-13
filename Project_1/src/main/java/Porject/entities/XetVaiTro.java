package Porject.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "XetVaiTro")
public class XetVaiTro {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "IdNguoiDung", referencedColumnName = "id")
	private NguoiDung nguoiDung;
	
	@ManyToOne
	@JoinColumn(name = "IdVaiTro", referencedColumnName = "id")
	private VaiTro vaiTro;
	
	public XetVaiTro() {
		// TODO Auto-generated constructor stub
	}

	public XetVaiTro(Long id, NguoiDung nguoiDung, VaiTro vaiTro) {
		super();
		this.id = id;
		this.nguoiDung = nguoiDung;
		this.vaiTro = vaiTro;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public NguoiDung getNguoiDung() {
		return nguoiDung;
	}

	public void setNguoiDung(NguoiDung nguoiDung) {
		this.nguoiDung = nguoiDung;
	}

	public VaiTro getVaiTro() {
		return vaiTro;
	}

	public void setVaiTro(VaiTro vaiTro) {
		this.vaiTro = vaiTro;
	}
	
	
}
