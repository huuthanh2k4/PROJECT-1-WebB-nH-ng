package Porject.GoiHamChucNang.CaiDat;

import java.sql.Connection;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.engine.jdbc.connections.spi.AbstractDataSourceBasedMultiTenantConnectionProviderImpl;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Porject.GoiHamChucNang.GoiHamThongTinSP;
import Porject.entities.ThongTinSP.CauHinhSP;
import Porject.entities.ThongTinSP.Chip;
import Porject.entities.ThongTinSP.DanhMuc;
import Porject.entities.ThongTinSP.DanhSachSP;
import Porject.entities.ThongTinSP.DoPhanGiai;
import Porject.entities.ThongTinSP.ImgSP;
import Porject.entities.ThongTinSP.LOAI_RAM;
import Porject.entities.ThongTinSP.Ram;
import Porject.entities.ThongTinSP.Sac;
import Porject.entities.ThongTinSP.TangSoQuet;
import Porject.entities.ThongTinSP.ThuongHieu;
import Porject.entities.ThongTinSP.TinhNang;
@Repository
public class LaythongtinSP implements GoiHamThongTinSP{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<CauHinhSP> layTTCHSP() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from CauHinhSP").list();
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
	public List<Chip> layTTC() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from Chip").list();
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
	public List<DanhMuc> layTTDM() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from DanhMuc").list();
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
	public List<DoPhanGiai> layTTDPG() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from DoPhanGiai").list();
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
	public List<ImgSP> LayIMG() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from ImgSP").list();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return null;
	}

	@Override
	public List<LOAI_RAM> layTTLR() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from LOAI_RAM").list();
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
	public List<Ram> layTTR() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from Ram").list();
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
	public List<Sac> layTTS() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from Sac").list();
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
	public List<TangSoQuet> layTTTSQ() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from TangSoQuet").list();
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
	public List<ThuongHieu> layTTTH() {
		Session session = sessionFactory.openSession();
		try {
			List<ThuongHieu> list = session.createQuery("from ThuongHieu", ThuongHieu.class).list();
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
	public List<TinhNang> layTTTN() {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from TinhNang").list();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			session.close();
		}
		return null;
	}
//    lấy theo ID
	@Override
	public ImgSP ChiTiet(String id) {
		Session session = sessionFactory.openSession();
		try {
			ImgSP imgSP = session.get(ImgSP.class, id);
			return imgSP;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			session.close();
		}
		return null;
	}


	@Override
	public List<CauHinhSP> layCauHinhSPTheoIdSP(String idSP) {
	    Session session = sessionFactory.openSession();
	    try {
	        String hql = "FROM CauHinhSP WHERE idSP = :idSP";
	        Query<CauHinhSP> query = session.createQuery(hql, CauHinhSP.class);
	        query.setParameter("idSP", idSP);
	        return query.getResultList(); 
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        session.close();
	    }
	    return null;
	}
	
	
	@Override
	public List<CauHinhSP> TimKiemSP(String Search) {
		if (Search == null || Search.length() == 0) {
			Search = "%";
		}else {
			Search = "%" +Search.toLowerCase() + "%";
		}
		
		Session session = sessionFactory.openSession();
		try {
			List<CauHinhSP> list = session.createQuery("from CauHinhSP where lower(DSSP.tenSP) like:Search ")
							.setParameter("Search", Search)
							.getResultList();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			session.close();
		}
		return null;
	}

}
