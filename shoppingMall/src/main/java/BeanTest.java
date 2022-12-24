import java.util.ArrayList;
import java.util.List;

/**
 * 
 * java Bean  single tone 객체이다.
 * single tone 은.. 객체가 하나인 디자인 패턴
 *
 */

class NonSingletone{
	List<Integer> lists = new ArrayList<Integer>();
	public List<Integer> getAllLists(){		
		return lists;
	}
	public void addLists(int data) {
		lists.add(data);
	}
	
}


public class BeanTest {

	public static void main(String[] args) {		
		NonSingletone Obj1 = new NonSingletone();
		Obj1.addLists(120);	
		System.out.println(Obj1.getAllLists());
		
		SingleTone Obj2 = SingleTone.getInstance();
		Obj2.addLists(12345);
		
		SingleTone Obj3 = SingleTone.getInstance();
		Obj3.addLists(100);
		
		System.out.println(Obj3.getAllLists());
		System.out.println(Obj3);
		
	}

}
