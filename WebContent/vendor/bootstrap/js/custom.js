var request;
function sendInfo() {
	var v = document.form.noteacher.value;
	var url = "showteachers.jsp?val=" + v;

	if (window.XMLHttpRequest) {
		request = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		request = new ActiveXObject("Microsoft.XMLHTTP");
	}

	try {
		request.onreadystatechange = getInfo;
		request.open("GET", url, true);
		request.send();
	} catch (e) {
		alert("Unable to connect to server");
	}
}

function getInfo() {
	if (request.readyState == 4) {
		var val = request.responseText;
		document.getElementById('1').innerHTML = val;
	}
}

function sendInfo2() {
	var v = document.form.nostudentgroup.value;
	var url = "showstgrp.jsp?val=" + v;

	if (window.XMLHttpRequest) {
		request = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		request = new ActiveXObject("Microsoft.XMLHTTP");
	}

	try {
		request.onreadystatechange = getInfo2;
		request.open("GET", url, true);
		request.send();
	} catch (e) {
		alert("Unable to connect to server");
	}
}

function getInfo2() {
	if (request.readyState == 4) {
		var val = request.responseText;
		document.getElementById('2').innerHTML = val;
	}
}

function sendInfo3() {
	var v = document.form.hoursperday.value;
	var url = "showhours.jsp?val=" + v;

	if (window.XMLHttpRequest) {
		request = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		request = new ActiveXObject("Microsoft.XMLHTTP");
	}

	try {
		request.onreadystatechange = getInfo3;
		request.open("GET", url, true);
		request.send();
	} catch (e) {
		alert("Unable to connect to server");
	}
}

function getInfo3() {
	if (request.readyState == 4) {
		var val = request.responseText;
		document.getElementById('3').innerHTML = val;
	}
}

function sendInfo4(j) {
	var temp = "nosubject" + j;
	var v = document.getElementById(temp).value;
	//var subjects[]=document.getElementById("teachersubject").value;
	//var v=document.getElementById("nosubject"+j);
	//var v=document.form.nosubject0.value;  
	var url = "showstgrpsubject.jsp?val=" + v;

	if (window.XMLHttpRequest) {
		request = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		request = new ActiveXObject("Microsoft.XMLHTTP");
	}
	try {
		request.onreadystatechange = function() {
			if (request.readyState == 4) {
				var val = request.responseText;
				document.getElementById('sub' + j).innerHTML = val;
			}
		};
		request.open("GET", url, true);
		request.send();
	} catch (e) {
		alert("Unable to connect to server");
	}
}

function getInfo4(j) {
	alert(j + "get");
	if (request.readyState == 4) {
		alert(j + "aa");
		var val = request.responseText;
		document.getElementById('sub' + j).innerHTML = val;
	}
}

function sendInfo5() {
	var v = document.form.daysperweek.value;
	var url = "showdays.jsp?val=" + v;

	if (window.XMLHttpRequest) {
		request = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		request = new ActiveXObject("Microsoft.XMLHTTP");
	}

	try {
		request.onreadystatechange = getInfo5;
		request.open("GET", url, true);
		request.send();
	} catch (e) {
		alert("Unable to connect to server");
	}
}

function getInfo5() {
	if (request.readyState == 4) {
		var val = request.responseText;
		document.getElementById('5').innerHTML = val;
	}
}

function KeepCount(j) {
	var NewCount = 0

	if (document.form.mon.checked) {
		NewCount = NewCount + 1
	}
	if (document.form.tue.checked) {
		NewCount = NewCount + 1
	}
	if (document.form.wed.checked) {
		NewCount = NewCount + 1
	}
	if (document.form.sat.checked) {
		NewCount = NewCount + 1
	}
	if (document.form.thur.checked) {
		NewCount = NewCount + 1
	}
	if (document.form.fri.checked) {
		NewCount = NewCount + 1
	}
	if (document.form.sun.checked) {
		NewCount = NewCount + 1
	}

	if (NewCount == j + 1) {
		//alert('Dont pick more than no. you entered above')
		document.form;
		return false;
	}
}