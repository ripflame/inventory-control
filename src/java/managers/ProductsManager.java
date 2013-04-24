package managers;

import inventory_management.InventoryHelper;
import inventory_management.Product;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Gilberto Leon <ripflame@gmail.com>
 */
public class ProductsManager {
    
    private Session session;
    
    public ProductsManager() {
        this.session = new InventoryHelper().getSession();
    }
    
    public List getProducts() {
        List<Product> productsList = null;
        
        try {
            session.beginTransaction();
            Query query = session.createQuery("from Product");
            productsList = (List<Product>)query.list();
        } catch (Exception e) {
            Logger.getLogger(UserManager.class.getName()).log(Level.INFO, 
                    "Couldn't complete query", e);
        }
        
        return productsList;
    }
    
    public Product getProductWithId(int id) {
        Product product = null;
        
        try {
            session.beginTransaction();
            Query query = session.createQuery("from Product p where p.id like :id");
            query.setParameter("id", id);
            product = (Product) query.uniqueResult();
        } catch (Exception e) {
            Logger.getLogger(UserManager.class.getName()).log(Level.INFO, 
                    "Couldn't complete query", e);
        }
        
        return product;
    }
    
    public void addProduct(Product product) {
        try {
            session.beginTransaction();
            session.saveOrUpdate(product);
            session.getTransaction().commit();
        } catch (Exception e) {
            Logger.getLogger(UserManager.class.getName()).log(Level.INFO, 
                    "Couldn't add product", e);
        }
    }
    
    public void deleteProduct(Product product) {
        try {
            session.beginTransaction();
            session.delete(product);
            session.getTransaction().commit();
        } catch (Exception e) {
            Logger.getLogger(UserManager.class.getName()).log(Level.INFO, 
                    "Couldn't delete product", e);
        }
    }

}
