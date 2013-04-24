package tests;

import inventory_management.Product;
import inventory_management.User;
import java.util.Iterator;
import java.util.List;
import managers.ProductsManager;
import managers.UserManager;

/**
 *
 * @author Gilberto Leon <ripflame@gmail.com>
 */
public class ManagersTest {
    
    public static void main(String[] args) {
//        printUsers();
//        searchUserById(1);
//        addUser("Loco", "loco", 1);
//        deleteUser(); !!Hard-coded
        
//        printProducts();
//        searchProductById(1);
          addProduct("Bichos", "Biscozos pero sabrosos", 9001);
          printProducts();
//        deleteProduct(); !!Hard-coded
    }

    public static void printUsers() {
        UserManager userMan = new UserManager();
        List<User> usersList = userMan.getUsers();
        Iterator<User> usersIterator = usersList.iterator();
        System.out.println("List of users");
        while(usersIterator.hasNext()) {
            User temporalUser = usersIterator.next();
            System.out.println("User: " + temporalUser.getName());
        }
    }
    
    public static void searchUserById(int id) {
        UserManager userMan = new UserManager();
        User user = userMan.getUserWithId(id);
        System.out.println("User with id: " + "\"" + id + "\"" + " is: " + user.getName());
    }
    
    public static void addUser(String name, String pass, int permission) {
        UserManager userMan = new UserManager();
        User user = new User(name, pass, permission);
        
        userMan.addUser(user);
    }
    
    public static void deleteUser() {
        UserManager userMan = new UserManager();
        User userToDelete = userMan.getUserWithId(4);
        userMan.deleteUser(userToDelete);
    }
    
    public static void printProducts() {
        ProductsManager prodMan = new ProductsManager();
        List<Product> prodList = prodMan.getProducts();
        Iterator<Product> prodIterator = prodList.iterator();
        System.out.println("List of products");
        while (prodIterator.hasNext()) {
            Product tempProd = prodIterator.next();
            System.out.println("Product: " + tempProd.getName());
        }
    }
    
    public static void searchProductById(int id) {
        ProductsManager prodMan = new ProductsManager();
        Product product = prodMan.getProductWithId(id);
        System.out.println("Product with id: " + "\"" + id + "\"" + " is: " + product.getName());
    }
    
    public static void addProduct(String name, String description, int quantity) {
        ProductsManager prodMan = new ProductsManager();
        Product prod = new Product(name, description, quantity);
        
        prodMan.addProduct(prod);
    }
    
    public static void deleteProduct() {
        ProductsManager prodMan = new ProductsManager();
        Product prodToDelete = prodMan.getProductWithId(3);
        prodMan.deleteProduct(prodToDelete);
    }

}
