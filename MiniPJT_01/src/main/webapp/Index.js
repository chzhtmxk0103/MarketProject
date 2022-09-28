var btn_mode = document.getElementById("btn_mode");

function change_day(){
	if(btn_mode.value=="dark mode"){
	btn_mode.value = "day mode";
	
	document.body.style.backgroundColor="black";
	document.body.style.color="white";
	}else{
		btn_mode.value = "dark mode";
		
		document.body.style.backgroundColor="white";
		document.body.style.color="black";
	}
}/**
 * 
 */