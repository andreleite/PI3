/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import java.util.List;
import model.pojo.Vendas;
import model.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author andreleite
 */
public class VendasDAO {
        public static List<Vendas> layDS() {
        List<Vendas> list = null;
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            String hql = "from vendas";
            Query query = session.createQuery(hql);
            list = query.list();
            session.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
