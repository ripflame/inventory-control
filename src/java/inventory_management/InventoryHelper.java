package inventory_management;

import org.hibernate.Session;

/**
 *
 * @author Gilberto Leon <ripflame@gmail.com>
 */
public class InventoryHelper {
    
    Session session = null;
    
    public InventoryHelper() {
        this.session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public Session getSession() {
        return this.session;
    }

}
