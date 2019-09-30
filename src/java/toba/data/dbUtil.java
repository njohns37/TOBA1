package toba.data;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;


public class dbUtil {
    private static final EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("tobaPU");
    
    public static EntityManagerFactory getEmFactory() {
        return emf;
    }
}
