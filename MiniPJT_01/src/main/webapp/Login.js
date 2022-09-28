var first_id = "aaa";
var tx_id = document.getElementById("tx_id");

function check(){
	if(first_id == tx_id.value){
		alert("중복입니다.")
	}else{
		alert("사용가능한 ID입니다.")
	}
}