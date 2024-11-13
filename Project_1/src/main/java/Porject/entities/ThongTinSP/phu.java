package Porject.entities.ThongTinSP;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "phu")
public class phu {
	@Id
	@Column(name = "idP")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer idP;
	
	@ManyToOne
	@JoinColumn(name = "id", referencedColumnName = "id")
	private CauHinhSP P;

	
}
