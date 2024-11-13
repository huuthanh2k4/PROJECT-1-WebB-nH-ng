package Porject.GoiHamChucNang.CaiDat;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Porject.GoiHamChucNang.goiHamDanhSachSP;
import Porject.entities.ThongTinSP.DanhSachSP;
@Repository
public class SettingDanhSachSP implements goiHamDanhSachSP{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<DanhSachSP> layThongTinSP() {
		Session session = sessionFactory.openSession();
			try {
				List list = session.createQuery("from DanhSachSP").list();
				return list;
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
		return null;
	}

	@Override
	public List<DanhSachSP> TimKiemSP(String ten, String tenThuongHieu, Integer minGia, Integer maxGia, String maDanhMuc) {
	    StringBuilder search = new StringBuilder("from DanhSachSP sp JOIN sp.TH th JOIN sp.DM dm JOIN sp.cauHinhSPs chsp WHERE 1=1");

	    if (ten != null && !ten.trim().isEmpty()) {
	        ten = "%" + ten.toLowerCase() + "%";
	        search.append(" and lower(sp.tenSP) like :ten");
	    }

	    if (tenThuongHieu != null && !tenThuongHieu.trim().isEmpty()) {
	        tenThuongHieu = "%" + tenThuongHieu.toLowerCase() + "%";
	        search.append(" and lower(th.tenThuongHieu) like :tenThuongHieu");
	    }

	    if (minGia != null) {
	        search.append(" and chsp.giaSP >= :minGia");
	    }

	    if (maxGia != null) {
	        search.append(" and chsp.giaSP <= :maxGia");
	    }

	    if (maDanhMuc != null && !maDanhMuc.trim().isEmpty()) {
	        search.append(" and dm.maDanhMuc = :maDanhMuc");
	    }

	    Session session = sessionFactory.openSession();
	    List<DanhSachSP> sps = new ArrayList<>();

	    try {
	        Query query = session.createQuery(search.toString());

	        if (ten != null && !ten.trim().isEmpty()) {
	            query.setParameter("ten", ten);
	        }

	        if (tenThuongHieu != null && !tenThuongHieu.trim().isEmpty()) {
	            query.setParameter("tenThuongHieu", tenThuongHieu);
	        }

	        if (minGia != null) {
	            query.setParameter("minGia", minGia);
	        }

	        if (maxGia != null) {
	            query.setParameter("maxGia", maxGia);
	        }

	        if (maDanhMuc != null && !maDanhMuc.trim().isEmpty()) {
	            query.setParameter("maDanhMuc", maDanhMuc);
	        }

	        List<Object[]> results = query.getResultList();
	        for (Object[] result : results) {
	            sps.add((DanhSachSP) result[0]); 
	        }
	    } catch (Exception e) {
	        System.err.println("Có lỗi xảy ra khi tìm kiếm sản phẩm: " + e.getMessage());
	        e.printStackTrace();
	    } finally {
	        session.close();
	    }
	    return sps;
	}

	@Override
	public DanhSachSP LayIdDS(String id) {
		Session session = sessionFactory.openSession();
		try {
			DanhSachSP danhSachSP = session.get(DanhSachSP.class, id);
			return danhSachSP;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
	return null;
}
	
	

}
