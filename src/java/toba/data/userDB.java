
package toba.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import toba.customer.Customer;


public class userDB {
    public static void insert(Customer user) {
        EntityManager em = dbUtil.getEmFactory().createEntityManager();
        EntityTransaction trans = em.getTransaction();
        trans.begin();        
        try {
            em.persist(user);
            trans.commit();
        } catch (Exception e) {
            System.out.println(e);
            trans.rollback();
        } finally {
            em.close();
        }
    }
}
