package ws.client.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;

import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;
import javax.ws.rs.core.MediaType;

/**
 * Servlet implementation class RegisterServiceClientServlet
 */
@WebServlet({ "/RegisterServiceClientServlet", "/RegisterService" })
public class RegisterServiceClientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServiceClientServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException  {
		Map<String, String[]> map = request.getParameterMap();
        Set set = map.entrySet();
	    Iterator it = set.iterator();
	    Client client = Client.create();
		JSONObject json= new JSONObject();

		WebResource webResource = null;
		while (it.hasNext()) {
	            Map.Entry<String, String[]> entry = (Entry<String, String[]>) it.next();
	            String paramName = entry.getKey();
	            String[] paramValues = entry.getValue();
	            if(paramValues.length==1){
	            	if(paramName.equalsIgnoreCase("endpoint")){
	            		webResource = client.resource(paramValues[0]);
	            	}else if (paramName.equalsIgnoreCase("submit")){
	            		System.out.println(paramValues[0]);
	            	} else
						try {
							json.put(paramName, paramValues[0]);
						} catch (JSONException e) {
							
							e.printStackTrace();
						}
	            }
	            
		 }
		ClientResponse wsResponse = webResource.accept("application/json")
				.type(MediaType.APPLICATION_JSON)
				.post(ClientResponse.class, json);

		JSONObject result = wsResponse.getEntity(JSONObject.class);
		String respCode;
		try {
			respCode = (String) result.get("response_code");
			if (respCode.equals("00")) {
				String tokenRecived = (String) result.get("token");
				System.out.println("tokenRecived" + tokenRecived);
				System.out.println("suucessfully Stored data for provisioning");
				String redirect_url = (String) result.get("redirect_url");
				System.out.println("redirect_url " + redirect_url);
				/*request.getSession().setAttribute("token", tokenRecived);
				String url=redirect_url+"?token="+redirect_url;
				response.sendRedirect(url);
*/
			}
			if (respCode.equals("Err_20")) {
				String errorMsg = (String) result.getString("response_message");
				System.out.println(errorMsg);
			}
			if (respCode.equals("Err_04")) {
				String errorMsg = (String) result.getString("response_message");
				System.out.println(errorMsg);
			}
			if (respCode.equals("Err_16")) {
				String errorMsg = (String) result.getString("response_message");
				System.out.println(errorMsg);
			}
		} catch (JSONException e) {
			e.printStackTrace();
		}
		System.out.println("responese  : " + wsResponse.getStatus());
		System.out.println("responese  : " + wsResponse.getStatus());
	}
}
