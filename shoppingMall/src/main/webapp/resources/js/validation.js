function checkAddProduct(){
	let $form = document.productFrom;
	let productId = $form.productId;
	let pname = $form.pname;
	let unitPrice = $form.unitPrice;
	let stockCounts = $form.stockCounts;
	// 상품 아이디체크
	if( !check(/^P[0-9]{4,11}$/, productId
		,"[상품코드]\nP와 숫자로된 5자리에서 12자리\n상품코드를 입력하세요"))
	{
		return false;	
	}
	
	// 상품명 4~12	          
	if( !check(/^[a-z|A-Z|가-힣]{3,11}/g,pname,"[상품명]\n4~12자리 문자로 입력하세요"  ) ){
		return false
	}
	
	// 상품가격 숫자만 입력
	if( !check(/^[0-9]+$/,unitPrice,"[상품가격]\n숫자로 입력하세요"  ) ){
		return false
	}
	
	// 상품수량 숫자만 입력
	if( !check(/^[0-9]+$/,stockCounts,"[재고수]\n숫자로 입력하세요"  ) ){
		return false
	}
	
	
		
}

function check(regExp, e, msg){	// 정규화 체크 함수
	if(regExp.test(e.value)){
		return true;
	}
	alert(msg);
	e.select();
	e.focus();
	return false
}