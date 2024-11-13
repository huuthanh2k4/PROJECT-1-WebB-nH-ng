package Porject.entities.ThongTinSP;

import java.util.Date; 

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cauHinhSP")
public class CauHinhSP {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name = "idSP",referencedColumnName = "idSP")
	private DanhSachSP DSSP;
	
	@ManyToOne
	@JoinColumn(name = "maSac",referencedColumnName = "maSac")
	private Sac S;
	
	@ManyToOne
	@JoinColumn(name = "maLoaiRAM",referencedColumnName = "maLoaiRAM")
	private LOAI_RAM LR;
	
	@ManyToOne
	@JoinColumn(name = "maRAM",referencedColumnName = "maRAM")
	private Ram R;
	
	@ManyToOne
	@JoinColumn(name = "maChip",referencedColumnName = "maChip")
	private Chip C;
	
	@ManyToOne
	@JoinColumn(name = "maTinhNang",referencedColumnName = "maTinhNang")
	private TinhNang TN;
	
	@ManyToOne
	@JoinColumn(name = "maTangSoQuet",referencedColumnName = "maTangSoQuet")
	private TangSoQuet TSQ;
	
	@Column(name = "doRongMan")
	private String doRongMan;
	
	@ManyToOne
	@JoinColumn(name = "maDoPhanGiai",referencedColumnName = "maDoPhanGiai")
	private DoPhanGiai DPG;
	
	@Column(name = "giaSP")
	private Integer giaSP;
	
	@Column(name = "ngayNhap")
	private Date ngayNhap;
	
	@Column(name = "soLuongTon")
	private Integer soLuongTon;
	
	public CauHinhSP() {
		// TODO Auto-generated constructor stub
	}

	public CauHinhSP(DanhSachSP dSSP, Sac s, LOAI_RAM lR, Ram r, Chip c, TinhNang tN, TangSoQuet tSQ, String doRongMan,
			DoPhanGiai dPG, Integer giaSP, Date ngayNhap, Integer soLuongTon) {
		super();
		DSSP = dSSP;
		S = s;
		LR = lR;
		R = r;
		C = c;
		TN = tN;
		TSQ = tSQ;
		this.doRongMan = doRongMan;
		DPG = dPG;
		this.giaSP = giaSP;
		this.ngayNhap = ngayNhap;
		this.soLuongTon = soLuongTon;
	}

	public DanhSachSP getDSSP() {
		return DSSP;
	}

	public void setDSSP(DanhSachSP dSSP) {
		DSSP = dSSP;
	}

	public Sac getS() {
		return S;
	}

	public void setS(Sac s) {
		S = s;
	}

	public LOAI_RAM getLR() {
		return LR;
	}

	public void setLR(LOAI_RAM lR) {
		LR = lR;
	}

	public Ram getR() {
		return R;
	}

	public void setR(Ram r) {
		R = r;
	}

	public Chip getC() {
		return C;
	}

	public void setC(Chip c) {
		C = c;
	}

	public TinhNang getTN() {
		return TN;
	}

	public void setTN(TinhNang tN) {
		TN = tN;
	}

	public TangSoQuet getTSQ() {
		return TSQ;
	}

	public void setTSQ(TangSoQuet tSQ) {
		TSQ = tSQ;
	}

	public String getDoRongMan() {
		return doRongMan;
	}

	public void setDoRongMan(String doRongMan) {
		this.doRongMan = doRongMan;
	}

	public DoPhanGiai getDPG() {
		return DPG;
	}

	public void setDPG(DoPhanGiai dPG) {
		DPG = dPG;
	}

	public Integer getGiaSP() {
		return giaSP;
	}

	public void setGiaSP(Integer giaSP) {
		this.giaSP = giaSP;
	}

	public Date getNgayNhap() {
		return ngayNhap;
	}

	public void setNgayNhap(Date ngayNhap) {
		this.ngayNhap = ngayNhap;
	}

	public Integer getSoLuongTon() {
		return soLuongTon;
	}

	public void setSoLuongTon(Integer soLuongTon) {
		this.soLuongTon = soLuongTon;
	}

	
	
}
