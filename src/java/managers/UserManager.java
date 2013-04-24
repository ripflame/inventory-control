package managers;

import inventory_management.InventoryHelper;
import inventory_management.User;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Gilberto Leon <ripflame@gmail.com>
 */
public class UserManager {
    
    private Session session = null;
    
    public UserManager() {
        this.session = new InventoryHelper().getSession();
    }
    
    public List getUsers() {
        List<User> usersList = null;
        
        try {
            session.beginTransaction();
            Query query = session.createQuery("from User");
            usersList = (List<User>)query.list();
        } catch (Exception e) {
            Logger.getLogger(UserManager.class.getName()).log(Level.INFO, 
                    "Couldn't complete query", e);
        }
        
        return usersList;
    }
    
    public User getUserWithId(int id) {
        User user = null;
        
        try {
            session.beginTransaction();
            Query query = session.createQuery("from User u where u.id like :id");
            query.setParameter("id", id);
            user = (User) query.uniqueResult();
        } catch (Exception e) {
            Logger.getLogger(UserManager.class.getName()).log(Level.INFO, 
                    "Couldn't complete query", e);
        }
        
        return user;
    }
    
    public void addUser(User user) {
        try {
            session.beginTransaction();
            session.saveOrUpdate(user);
            session.getTransaction().commit();
        } catch (Exception e) {
            Logger.getLogger(UserManager.class.getName()).log(Level.INFO, 
                    "Coldn't add user", e);
        }
    }
    
    public void deleteUser(User user) {
        try {
            session.beginTransaction();
            session.delete(user);
            session.getTransaction().commit();
        } catch (Exception e) {
            Logger.getLogger(UserManager.class.getName()).log(Level.INFO, 
                    "Coldn't delete user", e);
        }
    }

}
