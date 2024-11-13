package Porject.GoiHamChucNang.CaiDat;

import java.util.List; 

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Porject.GoiHamChucNang.GoiHam;
import Porject.entities.NguoiDung;
@Repository
public class ChucNagNguoiDung implements GoiHam{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public NguoiDung DangNhap(String taikhoan) {
		Session session = sessionFactory.openSession();
			try {
			NguoiDung dung = (NguoiDung) session.createQuery("from NguoiDung where TaiKhoan = :TaiKhoan")
				.setParameter("TaiKhoan", taikhoan) //theo dong 18
				.uniqueResult();
			return dung; //theo dòng 21
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
		return null;
	}

	@Override
	public List<NguoiDung> layThongTin() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from NguoiDung").list();
				return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			session.close();
		}
		return null;
	}

	@Override
	public boolean ThemTaiKhoan(NguoiDung nd) {
		Session session = sessionFactory.openSession();
		boolean loi = false;
		  try {
			session.beginTransaction();
			session.save(nd);
			session.getTransaction().commit();
			loi = true;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return loi;
	}

	@Override
	public NguoiDung thongTinNguoiDung(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean CapNhap(NguoiDung nd) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean xoa(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<NguoiDung> timKiem(String search) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
