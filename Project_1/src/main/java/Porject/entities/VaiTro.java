package Porject.entities;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "VaiTro")
public class VaiTro {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "name")
	private String name;
	
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "vaiTro")
	private Set<XetVaiTro> vaiTros;
	
	public VaiTro() {
		// TODO Auto-generated constructor stub
	}

	public VaiTro(Long id, String name, Set<XetVaiTro> vaiTros) {
		super();
		this.id = id;
		this.name = name;
		this.vaiTros = vaiTros;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<XetVaiTro> getVaiTros() {
		return vaiTros;
	}

	public void setVaiTros(Set<XetVaiTro> vaiTros) {
		this.vaiTros = vaiTros;
	}
	
	
	
}
