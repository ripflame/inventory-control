package actions;

import com.opensymphony.xwork2.ActionSupport;
import inventory_management.User;
import java.util.Map;
import managers.UserManager;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author Gilberto Leon <ripflame@gmail.com>
 */
public class UserActions extends ActionSupport implements SessionAware {
    
    private Map<String, Object> mapSession;
    private String userName;
    private String userPassword;
    
    public String create() throws Exception {
        
        return "createNewUser";
    }
    
    public String updateNew() throws Exception {
        UserManager man = new UserManager();
        User newUser = new User(this.getUserName(), this.getUserPassword(), 0);
        
        man.addUser(newUser);
        
        mapSession.put("User", newUser);
        
        return "successNewUser";
    }

    @Override
    public void setSession(Map<String, Object> mapSession) {
        this.mapSession = mapSession;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

}
