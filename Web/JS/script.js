
function fileupload(){
	document.getElementById("photo").click();
}

function dispInput(obj){

	var fromName = document.getElementById("form"+obj);

	var labels = fromName.getElementsByTagName("label");
	var inputs = fromName.getElementsByTagName("input");
	var selects = fromName.getElementsByTagName("select");


	for (i=0;i<labels.length;i++) {
		labels[i].style.display="none";
	}

	for (i=0;i<inputs.length;i++) {
		inputs[i].style.display="inline";
	}

	for (i=0;i<selects.length;i++) {
		selects[i].style.display="inline";
	}
	document.getElementById("photo").style.display="none";
	
}

function cancelInput(obj){

	var fromName = document.getElementById("form"+obj);

	var labels = fromName.getElementsByTagName("label");
	var inputs = fromName.getElementsByTagName("input");
	var selects = fromName.getElementsByTagName("select");


	for (i=0;i<labels.length;i++) {
		labels[i].style.display="inline";
	}

	for (i=0;i<inputs.length;i++) {
		inputs[i].style.display="none";
	}

	for (i=0;i<selects.length;i++) {
		selects[i].style.display="none";
	}

	
}