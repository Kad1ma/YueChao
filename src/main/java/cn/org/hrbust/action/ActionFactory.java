package cn.org.hrbust.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

public class ActionFactory {

	private static Map<String , Action> actionMap = new HashMap<String, Action>();
	
	static{
		Properties prop = new Properties();
		try {
			prop.load(ActionFactory.class.getResourceAsStream("/action.properties"));
			
			for (Object key : prop.keySet()) {
				String actionName = (String) prop.get(key);
				Action action = (Action) Class.forName(actionName).newInstance();
				actionMap.put((String)key, action);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static Action factory(String reqURI){
		Action action = actionMap.get(reqURI);
		return action;
	}
	
}
