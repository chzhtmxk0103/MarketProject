const first_id = "aaa";
const tx_id = document.getElementById("tx_id");
const id_check = document.getElementById("id_check");

id_check.addEventListener("click", check);

function check(){
	if(first_id == tx_id.value){
		alert("중복입니다.")
	}else{
		alert("사용가능한 ID입니다.")
	}
}