

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class SessionListeners
 *
 */
public class SessionListeners implements HttpSessionListener {

	  ServletContext ctx=null;  
	    static int total1=0,current1=0;  
	      
    public SessionListeners() {
        // TODO Auto-generated constructor stub
    }

	
    public void sessionCreated(HttpSessionEvent se)  { 
         // TODO Auto-generated method stub
    	
    	ctx=se.getSession().getServletContext();
    	total1++;  
        current1++;  
          
        ctx=se.getSession().getServletContext();  
        ctx.setAttribute("totalusers", total1);  
        ctx.setAttribute("currentusers", current1);  
    }

	
    public void sessionDestroyed(HttpSessionEvent se)  { 
         // TODO Auto-generated method stub
    	
        current1--;  
        ctx.setAttribute("currentusers",current1);  
    }
	
}
