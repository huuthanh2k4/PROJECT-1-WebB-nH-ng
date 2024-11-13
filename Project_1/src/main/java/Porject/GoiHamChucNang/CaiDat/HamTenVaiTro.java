package Porject.GoiHamChucNang.CaiDat;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import Porject.GoiHamChucNang.goiHamTenVaiTro;
import Porject.entities.VaiTro;

@Repository
public class HamTenVaiTro implements goiHamTenVaiTro{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public VaiTro LayId(long id) {
		Session session = sessionFactory.openSession();
			try {
				return session.get(VaiTro.class, id);
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				session.close();
			}
		return null;
	}
	
	

}
