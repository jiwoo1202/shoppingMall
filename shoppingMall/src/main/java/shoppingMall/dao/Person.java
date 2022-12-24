package shoppingMall.dao;
// Data Access Object
// vo  : Value Object
// 순수하게 데이터만 저장하는 용도의 객체  (
public class Person {

	private int id = 0;
	private String name = "이름을 입력하세요";
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
