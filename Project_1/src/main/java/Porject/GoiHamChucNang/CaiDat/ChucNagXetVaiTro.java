package Porject.GoiHamChucNang.CaiDat;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Porject.GoiHamChucNang.HamXetVaiTro;
import Porject.entities.XetVaiTro;
@Repository

public class ChucNagXetVaiTro implements HamXetVaiTro{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean themVaiTro(XetVaiTro XVT) {
	    Session session = sessionFactory.openSession();
	    try {
	        session.beginTransaction();
	        session.save(XVT);
	        session.getTransaction().commit();
	        return true;  // Trả về true khi lưu thành công
	    } catch (Exception e) {
	        // Xử lý ngoại lệ nếu có
	        e.printStackTrace();
	        session.getTransaction().rollback();  // Rollback nếu có lỗi
	    } finally {
	        session.close();
	    }
	    return false;  // Trả về false nếu có lỗi xảy ra
	}

	@Override
	public List<XetVaiTro> getXetVaiTroList() {
		Session Session = sessionFactory.openSession();
		try {
			List list = Session.createQuery("from XetVaiTro").list();
				return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			Session.close();
		}
		return null;
	}
	

}
