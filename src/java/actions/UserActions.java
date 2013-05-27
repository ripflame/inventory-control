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
    UserManager userManager = new UserManager();
    User user;
    /*private String name = user.getName();
    private String password = user.getPassword();*/
    
    
    public String edit() throws Exception {
                userManager.updateUser(user);
		return "editUser";
	}

    @Override
    public void setSession(Map<String, Object> map) {
        this.mapSession = mapSession;
    }

    /**
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }

}
