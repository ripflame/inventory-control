package inventory_management;
// Generated 17-abr-2013 22:56:14 by Hibernate Tools 3.2.1.GA



/**
 * User generated by hbm2java
 */
public class User  implements java.io.Serializable {


     private Integer id;
     private String name;
     private String password;
     private int permissionLevel;

    public User() {
    }

    public User(String name, String password, int permissionLevel) {
       this.name = name;
       this.password = password;
       this.permissionLevel = permissionLevel;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public int getPermissionLevel() {
        return this.permissionLevel;
    }
    
    public void setPermissionLevel(int permissionLevel) {
        this.permissionLevel = permissionLevel;
    }




}


