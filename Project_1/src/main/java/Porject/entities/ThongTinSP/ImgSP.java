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
@Table(name = "ImgSP")
public class ImgSP {
	@Id
	@Column(name = "idSP")
	private String idSP;
	
	@Column(name = "img1")
	private String img1;
	
	@Column(name = "img2")
	private String img2;
	
	@Column(name = "img3")
	private String img3;
	
	@Column(name = "img4")
	private String img4;
	
	@Column(name = "img5")
	private String img5;
	
	@Column(name = "img6")
	private String img6;
	
	@Column(name = "img7")
	private String img7;
	
	@Column(name = "img8")
	private String img8;
	
	@Column(name = "img9")
	private String img9;
	
	@Column(name = "img10")
	private String img10;

	@Column(name = "img11")
	private String img11;

	@Column(name = "img12")
	private String img12;

	@Column(name = "img13")
	private String img13;

	@Column(name = "img14")
	private String img14;

	@Column(name = "img15")
	private String img15;

	@Column(name = "img16")
	private String img16;

	@Column(name = "img17")
	private String img17;

	@Column(name = "img18")
	private String img18;

	@Column(name = "img19")
	private String img19;

	@Column(name = "img20")
	private String img20;
	
	public ImgSP() {
		// TODO Auto-generated constructor stub
	}

	public ImgSP(String idSP, String img1, String img2, String img3, String img4, String img5, String img6, String img7,
			String img8, String img9, String img10, String img11, String img12, String img13, String img14,
			String img15, String img16, String img17, String img18, String img19, String img20) {
		super();
		this.idSP = idSP;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
		this.img5 = img5;
		this.img6 = img6;
		this.img7 = img7;
		this.img8 = img8;
		this.img9 = img9;
		this.img10 = img10;
		this.img11 = img11;
		this.img12 = img12;
		this.img13 = img13;
		this.img14 = img14;
		this.img15 = img15;
		this.img16 = img16;
		this.img17 = img17;
		this.img18 = img18;
		this.img19 = img19;
		this.img20 = img20;
	}

	public String getIdSP() {
		return idSP;
	}

	public void setIdSP(String idSP) {
		this.idSP = idSP;
	}

	public String getImg1() {
		return img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	public String getImg2() {
		return img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	public String getImg3() {
		return img3;
	}

	public void setImg3(String img3) {
		this.img3 = img3;
	}

	public String getImg4() {
		return img4;
	}

	public void setImg4(String img4) {
		this.img4 = img4;
	}

	public String getImg5() {
		return img5;
	}

	public void setImg5(String img5) {
		this.img5 = img5;
	}

	public String getImg6() {
		return img6;
	}

	public void setImg6(String img6) {
		this.img6 = img6;
	}

	public String getImg7() {
		return img7;
	}

	public void setImg7(String img7) {
		this.img7 = img7;
	}

	public String getImg8() {
		return img8;
	}

	public void setImg8(String img8) {
		this.img8 = img8;
	}

	public String getImg9() {
		return img9;
	}

	public void setImg9(String img9) {
		this.img9 = img9;
	}

	public String getImg10() {
		return img10;
	}

	public void setImg10(String img10) {
		this.img10 = img10;
	}

	public String getImg11() {
		return img11;
	}

	public void setImg11(String img11) {
		this.img11 = img11;
	}

	public String getImg12() {
		return img12;
	}

	public void setImg12(String img12) {
		this.img12 = img12;
	}

	public String getImg13() {
		return img13;
	}

	public void setImg13(String img13) {
		this.img13 = img13;
	}

	public String getImg14() {
		return img14;
	}

	public void setImg14(String img14) {
		this.img14 = img14;
	}

	public String getImg15() {
		return img15;
	}

	public void setImg15(String img15) {
		this.img15 = img15;
	}

	public String getImg16() {
		return img16;
	}

	public void setImg16(String img16) {
		this.img16 = img16;
	}

	public String getImg17() {
		return img17;
	}

	public void setImg17(String img17) {
		this.img17 = img17;
	}

	public String getImg18() {
		return img18;
	}

	public void setImg18(String img18) {
		this.img18 = img18;
	}

	public String getImg19() {
		return img19;
	}

	public void setImg19(String img19) {
		this.img19 = img19;
	}

	public String getImg20() {
		return img20;
	}

	public void setImg20(String img20) {
		this.img20 = img20;
	}

	

}
