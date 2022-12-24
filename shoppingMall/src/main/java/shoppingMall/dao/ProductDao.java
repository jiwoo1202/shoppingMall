package shoppingMall.dao;
// 아이디, 상품명, 가격, 설명, 제조사, 분류, 재고 수 , 상태(신품,중품,재생)
public class ProductDao {
	private String productId;	// 상품 아이디
	private String pname;		// 상품 명
	private Integer unitPrice;	// 상품 가격(단위가격)
	private String description; // 상품 설명
	private String maker; 		// 제조사
	private String category; 	// 분류
	private long stockCounts; 		// 재고수
	private String condition;	//  상태(신제품, 중고품, 재생품)
	private String fileName;	// 이미지 파일명
	
	
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Integer getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public long getStockCounts() {
		return stockCounts;
	}
	public void setStockCounts(long stockCounts) {
		this.stockCounts = stockCounts;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public ProductDao(String productId, String pname, Integer unitPrice, String description, String maker,
			String category, long stockCounts, String condition, String fileName) {
		super();
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
		this.description = description;
		this.maker = maker;
		this.category = category;
		this.stockCounts = stockCounts;
		this.condition = condition;
		this.fileName = fileName;
	}
	
	
	
}
