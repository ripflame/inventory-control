package actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author Gilberto Leon <ripflame@gmail.com>
 */
public class UserActions extends ActionSupport implements SessionAware {
    
    private Map<String, Object> mapSession;
    
    public String editUser() throws Exception {
        
        return "editUser";
    }

    @Override
    public void setSession(Map<String, Object> map) {
        throw new UnsupportedOperationException("Not supported yet.");
    }

}
