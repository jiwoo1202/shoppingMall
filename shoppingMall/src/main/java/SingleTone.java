import java.util.ArrayList;
import java.util.List;

public class SingleTone {
	List<Integer> lists = new ArrayList<Integer>();
	private static SingleTone instance = null;
	private SingleTone() {}
	
	public static SingleTone getInstance() {
		if(instance == null) {
			instance = new SingleTone();			
		}		
		return instance;
	}
	
	public List<Integer> getAllLists(){		
		return lists;
	}
	public void addLists(int data) {
		lists.add(data);
	}
}
